/**
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */
package src.ormsamples;

import org.orm.*;
import src.gms.*;

public class ListGameData {
	private static final int ROW_COUNT = 100;
	
	public void listTestData() throws PersistentException {
		System.out.println("Listing GMS...");
		GMS[] gMSGMSs = GMSDAO.listGMSByQuery(null, null);
		int length = Math.min(gMSGMSs.length, ROW_COUNT);
		for (int i = 0; i < length; i++) {
			System.out.println(gMSGMSs[i]);
		}
		System.out.println(length + " record(s) retrieved.");
		
		System.out.println("Listing Game...");
		Game[] gMSGames = GameDAO.listGameByQuery(null, null);
		length = Math.min(gMSGames.length, ROW_COUNT);
		for (int i = 0; i < length; i++) {
			System.out.println(gMSGames[i]);
		}
		System.out.println(length + " record(s) retrieved.");
		
		System.out.println("Listing User...");
		User[] gMSUsers = UserDAO.listUserByQuery(null, null);
		length = Math.min(gMSUsers.length, ROW_COUNT);
		for (int i = 0; i < length; i++) {
			System.out.println(gMSUsers[i]);
		}
		System.out.println(length + " record(s) retrieved.");
		
		System.out.println("Listing Platform...");
		Platform[] gMSPlatforms = PlatformDAO.listPlatformByQuery(null, null);
		length = Math.min(gMSPlatforms.length, ROW_COUNT);
		for (int i = 0; i < length; i++) {
			System.out.println(gMSPlatforms[i]);
		}
		System.out.println(length + " record(s) retrieved.");
		
	}
	
	public void listByCriteria() throws PersistentException {
		System.out.println("Listing GMS by Criteria...");
		GMSCriteria gMSGMSCriteria = new GMSCriteria();
		// Please uncomment the follow line and fill in parameter(s) 
		//gMSGMSCriteria.Id.eq();
		gMSGMSCriteria.setMaxResults(ROW_COUNT);
		GMS[] gMSGMSs = gMSGMSCriteria.listGMS();
		int length =gMSGMSs== null ? 0 : Math.min(gMSGMSs.length, ROW_COUNT); 
		for (int i = 0; i < length; i++) {
			 System.out.println(gMSGMSs[i]);
		}
		System.out.println(length + " GMS record(s) retrieved."); 
		
		System.out.println("Listing Game by Criteria...");
		src.gms.GameCriteria gMSGameCriteria = new src.gms.GameCriteria();
		// Please uncomment the follow line and fill in parameter(s) 
		//gMSGameCriteria.Id.eq();
		gMSGameCriteria.setMaxResults(ROW_COUNT);
		Game[] gMSGames = gMSGameCriteria.listGame();
		length =gMSGames== null ? 0 : Math.min(gMSGames.length, ROW_COUNT); 
		for (int i = 0; i < length; i++) {
			 System.out.println(gMSGames[i]);
		}
		System.out.println(length + " Game record(s) retrieved."); 
		
		System.out.println("Listing User by Criteria...");
		UserCriteria gMSUserCriteria = new UserCriteria();
		// Please uncomment the follow line and fill in parameter(s) 
		//gMSUserCriteria.Id.eq();
		gMSUserCriteria.setMaxResults(ROW_COUNT);
		User[] gMSUsers = gMSUserCriteria.listUser();
		length =gMSUsers== null ? 0 : Math.min(gMSUsers.length, ROW_COUNT); 
		for (int i = 0; i < length; i++) {
			 System.out.println(gMSUsers[i]);
		}
		System.out.println(length + " User record(s) retrieved."); 
		
		System.out.println("Listing Platform by Criteria...");
		PlatformCriteria gMSPlatformCriteria = new PlatformCriteria();
		// Please uncomment the follow line and fill in parameter(s) 
		//gMSPlatformCriteria.Id.eq();
		gMSPlatformCriteria.setMaxResults(ROW_COUNT);
		Platform[] gMSPlatforms = gMSPlatformCriteria.listPlatform();
		length =gMSPlatforms== null ? 0 : Math.min(gMSPlatforms.length, ROW_COUNT); 
		for (int i = 0; i < length; i++) {
			 System.out.println(gMSPlatforms[i]);
		}
		System.out.println(length + " Platform record(s) retrieved."); 
		
	}
	
	public static void main(String[] args) {
		try {
			ListGameData listGameData = new ListGameData();
			try {
				listGameData.listTestData();
				//listGameData.listByCriteria();
			}
			finally {
				GamePersistentManager.instance().disposePersistentManager();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
