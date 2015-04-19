package com.darkorbit.net;

import java.util.Map;
import java.util.TreeMap;

import com.darkorbit.chat.ChatManager;
import com.darkorbit.objects.GameMap;
import com.darkorbit.objects.Npc;
import com.darkorbit.objects.Player;
import com.darkorbit.objects.Portal;
import com.darkorbit.objects.Ship;

public class GameManager {
	/* Online players map */
		public static Map<Integer, ConnectionManager> onlinePlayers = new TreeMap<Integer, ConnectionManager>();
		
		public static void connectPlayer(ConnectionManager c) {
			onlinePlayers.put(c.player().getPlayerID(), c);
		}
		
		public static void disconnectPlayer(int playerID) {
			onlinePlayers.remove(playerID);
		}
		
		public static ConnectionManager getConnectionManager(int playerID) {
			return onlinePlayers.get(playerID);
		}
		
		public static boolean isOnline(int playerID) {
			if(onlinePlayers.containsKey(playerID)) {
				return true;
			} else {
				return false;
			}
		}
		
	/* Chat users */
		public static Map<Integer, ChatManager> chatUsers = new TreeMap<Integer, ChatManager>();
		
		public static void addChatUser(ChatManager user) {
			chatUsers.put(user.player().getPlayerID(), user);
		}
		
		public static ChatManager getChatUser(int playerID) {
			return chatUsers.get(playerID);
		}

	/* Ships map */
		public static Map<Short, Ship> ships = new TreeMap<Short, Ship>();
		
		public static void addShip(Ship ship) {
			ships.put(ship.getShipID(), ship);
		}
		
		public static Ship getShip(short shipID) {
			return ships.get(shipID);
		}
		
	/* Portals map */
		public static Map<Integer, Portal> portals = new TreeMap<Integer, Portal>();
		
		public static void addPortal(Portal p) {
			portals.put(p.getPortalID(), p);
		}
		
		public static Portal getPortal(int id) {
			return portals.get(id);
		}
		
	/* Range phoenix (Extra function) */
		public static Map<Integer, Integer> rangeShips = new TreeMap<Integer, Integer>();
		
		public static void addRangeShip(int id) {
			rangeShips.put(rangeShips.size(), id);
		}
		
	/* GameMaps map*/
		public static Map<Short, GameMap> gameMaps = new TreeMap<Short, GameMap>();
		
		public static void addMap(GameMap m) {
			gameMaps.put(m.getMapID(), m);
		}
		
	/* Players map */
		public static Map<Integer, Player> playersMap = new TreeMap<Integer, Player>();
		
		public static Player getPlayer(int playerID) {
			return playersMap.get(playerID);
		}
		
		public static void addPlayer(Player player) {
			playersMap.put(player.getPlayerID(), player);
		}
		
		public static void updatePlayer(Player player) {
			if(playersMap.containsKey(player.getPlayerID())) {
				playersMap.remove(player.getPlayerID());
				addPlayer(player);
			} else {
				addPlayer(player);
			}
		}
		
	/* Objects bought */
		public static Map<Integer, String> objectsBought = new TreeMap<Integer, String>();
		
		public static String getObject(int objectID) {
			return objectsBought.get(objectID);
		}
		
		public static void addObject(int itemID, String lootID) {
			objectsBought.put(itemID, lootID);
		}

	/* Game Npcs */
		public static Map<Long, Npc> gameNpcs = new TreeMap<>();
		
		public static Npc getNpc(long npcID) {
			return gameNpcs.get(npcID);
		}
		
		public static void addNpc(Npc npc) {
			gameNpcs.put(npc.getID(), npc);
		}
		
		public static void updateNpc(Npc npc) {
			if(gameNpcs.containsKey(npc.getID())) {
				gameNpcs.remove(npc.getID());
				addNpc(npc);
			} else {
				addNpc(npc);
			}
		}
}
