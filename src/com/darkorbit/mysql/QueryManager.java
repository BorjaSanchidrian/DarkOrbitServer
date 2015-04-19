package com.darkorbit.mysql;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.darkorbit.main.Launcher;
import com.darkorbit.net.GameManager;
import com.darkorbit.objects.Ammunition;
import com.darkorbit.objects.Clan;
import com.darkorbit.objects.Drone;
import com.darkorbit.objects.Engine;
import com.darkorbit.objects.Equipment;
import com.darkorbit.objects.Extra;
import com.darkorbit.objects.GameMap;
import com.darkorbit.objects.Generators;
import com.darkorbit.objects.Laser;
import com.darkorbit.objects.Player;
import com.darkorbit.objects.Portal;
import com.darkorbit.objects.Rockets;
import com.darkorbit.objects.Settings;
import com.darkorbit.objects.Shield;
import com.darkorbit.objects.Ship;
import com.darkorbit.objects.Weapons;
import com.darkorbit.utils.Console;
import com.darkorbit.utils.Vector;

public class QueryManager extends MySQLManager {
	
	public static String query = null;
	
	
	public static void updateSql(String query) {
		SQLUpdate(query);
	}
	
	public static boolean checkSessionID(long sessionID, int playerID) {
		boolean var = false;
		try {
			ResultSet result = query(query);
			query = "SELECT * FROM server_1_players WHERE playerID=" + playerID + " AND tokenId=" + sessionID;
			
			if(result.next()) {
				var = true;
			} else if(GameManager.getPlayer(playerID).getSessionID() == sessionID) {
				var = true;
			}
			
		} catch (SQLException e) {
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
		
		return var;
	}
	
	public static boolean chatBanned(String username) {
		boolean var = false;
		try {
			query = "SELECT * FROM server_1_chat_bans WHERE username='" + username + "'"; 
			ResultSet result = query(query);
			
			if(result.next()) {
				var = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return var;
	}
	
	public static void addBan(String username, Date date) {
		try {
			query = "SELECT * FROM server_1_chat_bans WHERE username='" + username + "'";
			ResultSet result = query(query);
			
			if(!result.next()) {
				query = "INSERT INTO server_1_chat_bans (username, date) VALUES (?, ?)";
				java.sql.PreparedStatement preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, username);
				preparedStatement.setString(2, date.toString());
				preparedStatement.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Carga la cuenta del usuario desde la base de datos
	 * @param playerID
	 */
	public static Player loadAccount(int playerID) {
		Player player = null;
		Settings playerSettings = null;
		
		query = "SELECT * FROM server_1_players WHERE playerID=" + playerID;
		ResultSet playerResult;
		
		try {
			playerResult = query(query);
			
			if(!playerResult.isBeforeFirst()) {
				//Si no encuentra la cuenta en la base de datos devuelve null y termina
				Console.error("Account " + playerID + " not found...");
				return null;
				
			} else {
				//Se encuentra la cuenta en la db
				String settingsQuery = "SELECT * FROM server_1_players_settings WHERE playerID=" + playerID;
				ResultSet settingsResult = query(settingsQuery);
				
				//Si encuentra la fila de las opciones...
				if((settingsResult.isBeforeFirst()) && (settingsResult.next())) {
					playerSettings = new Settings(
							settingsResult.getString("SETTINGS"),
							settingsResult.getString("MINIMAP_SCALE"),
							settingsResult.getString("DISPLAY_PLAYER_NAMES"),
							settingsResult.getString("DISPLAY_CHAT"),
							settingsResult.getString("PLAY_MUSIC"),
							settingsResult.getString("PLAY_SFX"),
							settingsResult.getString("BAR_STATUS"),					
							settingsResult.getString("WINDOW_SETTINGS"),
							settingsResult.getString("AUTO_REFINEMENT"),
							settingsResult.getString("QUICKSLOT_STOP_ATTACK"),
							settingsResult.getString("DOUBLECLICK_ATTACK"),
							settingsResult.getString("AUTO_START"),
							settingsResult.getString("DISPLAY_NOTIFICATIONS"),
							settingsResult.getString("SHOW_DRONES"),
							settingsResult.getString("DISPLAY_WINDOW_BACKGROUND"),
							settingsResult.getString("ALWAYS_DRAGGABLE_WINDOWS"),
							settingsResult.getString("PRELOAD_USER_SHIPS"),
							settingsResult.getString("QUALITY_PRESETTING"),
							settingsResult.getString("QUALITY_CUSTOMIZED"),
							settingsResult.getString("QUALITY_BACKGROUND"),						
							settingsResult.getString("QUALITY_POIZONE"),						
							settingsResult.getString("QUALITY_SHIP"),
							settingsResult.getString("QUALITY_ENGINE"),
							settingsResult.getString("QUALITY_COLLECTABLE"),
							settingsResult.getString("QUALITY_ATTACK"),
							settingsResult.getString("QUALITY_EFFECT"),
							settingsResult.getString("QUALITY_EXPLOSION"),
							settingsResult.getString("QUICKBAR_SLOT"),
							settingsResult.getString("SLOTMENU_POSITION"),
							settingsResult.getString("SLOTMENU_ORDER"),
							settingsResult.getString("MAINMENU_POSITION")
							);
				}
				
				if(playerResult.next()) {
					//Una vez tiene las opciones del jugador y sus datos los retorna
					player = new Player(playerID, playerSettings, 
							playerResult.getString("username"),
							playerResult.getShort("shipId"),
							playerResult.getShort("factionId"),
							playerResult.getShort("mapId"),
							new Vector(playerResult.getInt("x"), playerResult.getInt("y")),
							playerResult.getInt("Health"),
							playerResult.getBoolean("premium"),
							playerResult.getLong("exp"),
							playerResult.getLong("credits"),
							playerResult.getLong("uri"),
							playerResult.getLong("honor"),
							playerResult.getInt("level"),
							playerResult.getDouble("jackpot"),
							playerResult.getInt("rank"),
							playerResult.getInt("GG"),
							playerResult.getInt("clanId")
							);
					
					GameManager.addPlayer(player);
					return player;
				} else {
					//Sino pues n�!
					return null;
				}
			}
		} catch(SQLException e) {
			Console.error("Couldn't load the player " + playerID + " account...");
			
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
			return null;
		}	
	}

	/**
	 * Carga todas las naves guardadas en la base de datos al iniciar el emulador
	 * @return Numero de naves cargadas
	 */
	public static int loadShips() {
		query = "SELECT * FROM ships";
		ResultSet result;
		int num = 0;
		
		try {
			result = query(query);
			
			while(result.next()) {
				Ship ship = new Ship(
						result.getShort("Id"),
						result.getInt("HP"),
						result.getInt("Shield"),
						result.getInt("shieldAbsorb"),
						result.getInt("Speed"),
						result.getInt("Batteries"),
						result.getInt("Rockets"),
						result.getInt("Cargo"),
						result.getInt("Damage"),
						result.getInt("maxDamage"),
						result.getInt("experience"),
						result.getInt("honor"),
						result.getInt("credits"),
						result.getInt("uridium"),
						result.getString("type"),
						result.getString("Name")
						);
				
				GameManager.addShip(ship);
				num++;
			}
			return num;
		} catch (SQLException e) {
			Console.error("Couldn't load ships");
			
			if(Launcher.developmentMode) {
				e.printStackTrace();	
			}
			
			//No se puede jugar sin naves
			System.exit(0);
			return num;
		}
	}

	/**
	 * Carga la municion del usuario //Falla si se compra y reconecta idk why
	 * @param playerID
	 * @return Objecto ammunition con los valores de la municion
	 */
	public static Ammunition loadAmmunition(int playerID) {
		int lcb10 = 0, mcb25 = 0, mcb50 = 0, sab50 = 0, ucb100 = 0, rsb75 = 0;
		
		try {
			query = "SELECT * FROM server_1_player_all_items WHERE playerID=" + playerID + " AND lootid LIKE '%ammunition_laser%'";
			ResultSet result;
			
			result = query(query);
			
			while(result.next()) {
				String[] ammoType = result.getString("lootid").split("_");
				
				//lcb-10 | mcb-25 | mcb-50 | sab-50 | ucb-100 | rsb-75
				switch(ammoType[2]) {
					case "lcb-10":
						lcb10 = result.getInt("Q");
						break;
						
					case "mcb-25":
						mcb25 = result.getInt("Q");
						break;
						
					case "mcb-50":
						mcb50 = result.getInt("Q");
						break;
						
					case "sab-50":
						sab50 = result.getInt("Q");
						break;
						
					case "ucb-100":
						ucb100 = result.getInt("Q");
						break;
						
					case "rsb-75":
						rsb75 = result.getInt("Q");
						break;
				}
			}
			
		} catch (SQLException e) {
			
			Console.error("Couldn't load the player ammunition...");
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
		
		return new Ammunition(lcb10, mcb25, mcb50, sab50, ucb100, rsb75);
	}

	
	/**
	 * Carga los misiles del usuario //Falla si se compra y reconecta idk why
	 * @param playerID
	 * @return Objecto Rockets con los valores de la municion
	 */
	public static Rockets loadRockets(int playerID) {
		query = "SELECT * FROM server_1_player_all_items WHERE playerID=" + playerID + " AND lootid LIKE '%ammunition_rocket%'";
		ResultSet result;
		int r310 = 0, plt2026 = 0, plt3030 = 0, plt2021 = 0;
		
		try {
			result = query(query);
			
			while(result.next()) {
				
				//r-310 | plt-2026 | plt-3030 | plt-2021 => RocketType
				switch(result.getString("lootid").split("_")[2]) {
					case "r-310":
						r310 = result.getInt("Q");
						break;
						
					case "plt-2026":
						plt2026 = result.getInt("Q");
						break;
						
					case "plt-3030":
						plt3030 = result.getInt("Q");
						break;
						
					case "plt-2021":
						plt2021 = result.getInt("Q");
						break;
				}
			}
			
		} catch (SQLException e) {
			
			Console.error("Couldn't load the player rockets...");
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
		
		return new Rockets(r310, plt2026, plt3030, plt2021);
	}

	/**
	 * Carga la informaci�n del clan del player
	 * @param clanID ID del clan
	 * @return Clan object
	 */
	public static Clan loadClan(int clanID) {
		query = "SELECT * FROM server_1_clan WHERE clanID=" + clanID;
		ResultSet result;
		Clan clan = null;
		
		try {
			result = query(query);
			
			if(result.next()) {
				clan = new Clan(clanID, result.getString("tagName"));
			}
			
		} catch (SQLException e) {
			Console.error("Couldn't load player clan...");
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
		}
		
		return clan;
	}

	
	/**
	 * Carga los portales del juego..
	 */
	public static void loadPortals() {
		query = "SELECT * FROM portals";
		ResultSet result;
		
		try {
			result = query(query);
			
			while(result.next()) {
				Portal portal = new Portal(
						result.getInt("id"),
						result.getShort("mapId"),
						new Vector(result.getInt("x"), result.getInt("y")),
						result.getShort("toMapId"),
						new Vector(result.getInt("newX"), result.getInt("newY")),
						result.getInt("reqLvl"),
						result.getInt("portalGFX"),
						result.getBoolean("safe")
						);
				
				GameManager.addPortal(portal);
			}
			
		} catch (SQLException e) {
			Console.error("Couldn't load the game portals..");
			if(Launcher.developmentMode) {
				e.printStackTrace();	
			}
			/*
			 * No se puede jugar sin portales..
			 * Relamente si, pero no quiero xD
			 */
			System.exit(0);
		}
	}
	
	/**
	 * Carga el equipamiento del jugador
	 * @param playerID
	 * @param config
	 * @return
	 */
	public static Equipment loadEquipment(int playerID, int config) {
		Equipment equipment = null;
		
		try {
			query = "SELECT * FROM server_1_hangar_config_ship WHERE playerID=" + playerID + " AND configNum=" + config;
			ResultSet result = query(query);
			
			Generators generators 	= null;
			Weapons weapons 		= null;
			/* ----------------------- */
			List<Shield> shields = new ArrayList<Shield>();
			List<Engine> engines = new ArrayList<Engine>();
			List<Laser> lasers   = new ArrayList<Laser>();
			List<Extra> extras 	 = new ArrayList<Extra>();
			List<Drone> drones   = new ArrayList<Drone>();
			/* ----------------------- */
			String[] generatorsID 	= null;
			String[] lasersID 		= null;
			String[] extrasID 		= null;

			if(result.next()) {
				//Generators
				if(result.getString("generators") != "") {
					generatorsID = result.getString("generators").split("\\|");
				}
				
				//Lasers
				if(result.getString("lasers") != "") {
					lasersID = result.getString("lasers").split("\\|");
				}
				
				//extras
				if(result.getString("extras") != "") {
					extrasID = result.getString("extras").split("\\|");
				}
			}
			
			//Drones part
			query = "SELECT * FROM server_1_player_drones WHERE playerID=" + playerID;
			ResultSet dronesResult = query(query);
			
			while(dronesResult.next()) {
				int droneID = dronesResult.getInt("item_sale_id");
				query = "SELECT * FROM server_1_hangar_config_drones WHERE item_id=" + droneID;
				ResultSet droneObjectsResult = query(query);
				
				int designID = 0;
				List<Laser> droneLasers   = new ArrayList<Laser>();
				List<Shield> droneShields = new ArrayList<Shield>();
				String droneDesign = "";
				
				String[] droneObjects = null;
				if(droneObjectsResult.next()) {
					if(config == 1) {
						if(droneObjectsResult.getString("EQ") != "") {
							droneObjects = droneObjectsResult.getString("EQ").split("\\|");
						}
						
						if(droneObjectsResult.getString("design") != "") {
							designID = droneObjectsResult.getInt("design");
						}
					} else {
						if(droneObjectsResult.getString("EQ2") != "") {
							droneObjects = droneObjectsResult.getString("EQ2").split("\\|");
						}
						
						if(droneObjectsResult.getString("design2") != "") {
							designID = droneObjectsResult.getInt("design2");
						}
					}
				}
				
				if(droneObjects != null) {
					for(int i=0; i<droneObjects.length; i++) {
						try {
							Object object = checkObject(Integer.parseInt(droneObjects[i]));
							
							switch(object.getClass().getSimpleName()) {
								case "Shield":
									droneShields.add((Shield) object);
									break;
								case "Laser":
									droneLasers.add((Laser) object);
									break;
							}
						} catch(Exception e) {}
					}
				} 
				
				if(designID != 0) {
					try {
						Object object = checkObject(designID);
						
						switch(object.getClass().getSimpleName()) {
							case "String":
								droneDesign = object.toString();
								break;
						}
					} catch(Exception e) {}
				}
				
				drones.add(new Drone(
						droneID,
						dronesResult.getInt("drone_level"),
						dronesResult.getString("drone_kind").split("_")[1],
						droneShields,
						droneLasers,
						droneDesign
						));
			}
			
			//Generators Setter
			if(generatorsID != null) {
				for(int i=0; i<generatorsID.length; i++) {
					try {
						Object object = checkObject(Integer.parseInt(generatorsID[i]));
						
						switch(object.getClass().getSimpleName()) {
							case "Shield":
								shields.add((Shield) object);
								break;
							case "Engine":
								engines.add((Engine) object);
								break;
						}
					} catch(Exception e) {}
				}
			}
			
			//Lasers Setter
			if(lasersID != null) {
				for(int i=0; i<lasersID.length; i++) {
					try {
						Object object = checkObject(Integer.parseInt(lasersID[i]));
						
						switch(object.getClass().getSimpleName()) {
							case "Laser":
								lasers.add((Laser) object);
								break;
						}
					} catch(Exception e) {}
				}
			}
			
			//Extras Setter
			if(extrasID != null) {
				for(int i=0; i<extrasID.length; i++) {
					try {
						Object object = checkObject(Integer.parseInt(extrasID[i]));
						
						switch(object.getClass().getSimpleName()) {
							case "Extra":
								extras.add((Extra) object);
								break;
						}
					} catch(Exception e) {}
				}
			}
			
			generators = new Generators(shields, engines);
			weapons = new Weapons(lasers);
			
			query = "SELECT * FROM server_1_players WHERE playerID=" + playerID;
			ResultSet playerResult = query(query);
			
			int currentShield = 0;
			if(playerResult.next()) {
				if(config == 1) {
					currentShield = playerResult.getInt("shield1");
				} else {
					currentShield = playerResult.getInt("shield2");
				}
			}
			equipment = new Equipment(generators, weapons, extras, drones, currentShield);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return equipment;
	}
	
	/**
	 * Actualiza en el jugador el equipamiento una vez el servidor esta abierto ^^
	 * @param packet
	 */
	public static void webEquipment(String packet) {
		/*
		 * webPacket|equipment|TYPE|PLAYERID|CONFIGNUM|27|16|18 objects
		 * 	p[0] = webPacket
		 *	p[1] = equipment
		 *	p[2] = lasers | generators | heavy_guns | extras
		 *	p[3] = playerID
		 *	p[4] = configNum
		 *	p[5] = items[]
		 */
		
		String[] p = packet.split("\\|");
		int playerID = Integer.parseInt(p[3]);
		Player player;
		
		if(GameManager.isOnline(playerID)) {
			//Si esta online en el momento
			player = GameManager.getConnectionManager(playerID).player();
		} else if(GameManager.playersMap.containsKey(playerID)) {
			//Si el usuario ya se habia conectado antes
			player = GameManager.getPlayer(playerID);
		} else {
			//Es la primera vez que entra
			player = loadAccount(playerID);
		}
		
		List<Shield> shields = new ArrayList<Shield>();
		List<Engine> engines = new ArrayList<Engine>();
		List<Laser> lasers   = new ArrayList<Laser>();
		List<Extra> extras   = new ArrayList<Extra>();
		
		for(int i=5; i<p.length; i++) {
			try {
				Object o = checkObject(Integer.parseInt(p[i]));
				
				switch(o.getClass().getSimpleName()) {
					case "Shield":
						shields.add((Shield) o);
						break;
					case "Engine":
						engines.add((Engine) o);
						break;
					case "Laser":
						lasers.add((Laser) o);
						break;
					case "Extra":
						extras.add((Extra) o);
						break;
					default:
						Console.error("ITEM DESCONOCIDO");
						break;
				}
			} catch(Exception e) {}
		}
		
		if(p[1].equals("equipment")) {
			//p[2] = lasers | generators | heavy_guns 
			switch(p[2]) {
				case "generators":
					player.getConfig(Integer.parseInt(p[4])).setGenerators(new Generators(shields, engines));
					break;
				case "lasers":
					player.getConfig(Integer.parseInt(p[4])).setWeapons(new Weapons(lasers));
					break;
				case "extras":
					player.getConfig(Integer.parseInt(p[4])).setExtras(extras);
					break;
			}
		} else if(p[1].equals("droneEquipment")) {
			//webPacket|droneEquipment|DRONEID|PLAYERID|CONFIGNUM/DESIGN|ITEMS[]
			int config = 0;
			if(p[4].equals("EQ")) {
				config = 1;
			} else {
				config = 2;
			}
			
			for(Drone d : player.getConfig(config).getDrones()) {
				if(d.getId() == Integer.parseInt(p[2])) {
					d.setLasers(lasers);
					d.setShields(shields);
				}
			}
		}
	}
	
	
	/**
	 * Comprueba que tipo de objeto es un ID dado
	 * @param objectID
	 * @return
	 */
	public static Object checkObject(int objectID) {
		Object object = null;
		try {
			query = "SELECT * FROM server_1_player_all_items WHERE id=" + objectID;
			ResultSet result = query(query);
			
			String alootID = null;
			if(result.next()) {
				//equipment_generator_shield_sg3n-b02
				alootID = result.getString("lootid");
			} else if(GameManager.objectsBought.containsKey(objectID)){
				alootID = GameManager.getObject(objectID);
			}
			String[] lootID = alootID.split("_");
			
			switch(lootID[1]) {
				case "generator":
					switch(lootID[2]) {
						case "shield":
							object = new Shield(objectID, lootID[3]);
							break;
							
						case "speed":
							object = new Engine(objectID, lootID[3]);
							break;
					}
					break;
					
				case "weapon":
					switch(lootID[2]) {
						case "laser":
							object = new Laser(objectID, lootID[3]);
							break;
							
						case "rocketlauncher":
							//TODO
							break;
					}
					break;
				
				case "extra":
					object = new Extra(objectID, lootID[3]);
					break;
					
				case "designs":
					//havoc | hercules
					object = new String(lootID[2]);
					break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return object;
	}
	
	/**
	 * Carga los mapas del juego. A medias!
	 */
	public static void loadMaps() {
		query = "SELECT * FROM maps WHERE id=1";
		try {
			//TODO: add more maps
			ResultSet result = query(query);
			
			while(result.next()) {
				//Crea un Mapa en el Mapa xD
				GameManager.addMap(new GameMap(
						result.getShort("id"), 
						new Vector(Double.parseDouble(result.getString("Limits").split("x")[0]), Double.parseDouble(result.getString("Limits").split("x")[1])), 
						result.getString("NPCS")));
			}
			
		} catch(Exception e) {
			Console.error("Couldn't load gameMaps...");
			if(Launcher.developmentMode) {
				e.printStackTrace();
			}
			System.exit(0);
		}
	}
}
