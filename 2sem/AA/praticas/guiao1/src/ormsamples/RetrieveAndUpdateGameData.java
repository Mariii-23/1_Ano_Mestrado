/**
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */
package src.ormsamples;

import org.orm.*;
import src.gms.*;

public class RetrieveAndUpdateGameData {
	public void retrieveAndUpdateTestData() throws PersistentException {
		PersistentTransaction t = GamePersistentManager.instance().getSession().beginTransaction();
		try {
			GMS gMSGMS = GMSDAO.loadGMSByQuery(null, null);
			// Update the properties of the persistent object
			GMSDAO.save(gMSGMS);
			Game gMSGame = GameDAO.loadGameByQuery(null, null);
			// Update the properties of the persistent object
			GameDAO.save(gMSGame);
			User gMSUser = UserDAO.loadUserByQuery(null, null);
			// Update the properties of the persistent object
			UserDAO.save(gMSUser);
			Platform gMSPlatform = PlatformDAO.loadPlatformByQuery(null, null);
			// Update the properties of the persistent object
			PlatformDAO.save(gMSPlatform);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		
	}
	
	public void retrieveByCriteria() throws PersistentException {
		System.out.println("Retrieving GMS by GMSCriteria");
		GMSCriteria gMSGMSCriteria = new GMSCriteria();
		// Please uncomment the follow line and fill in parameter(s)
		//gMSGMSCriteria.Id.eq();
		System.out.println(gMSGMSCriteria.uniqueGMS());
		
		System.out.println("Retrieving Game by GameCriteria");
		src.gms.GameCriteria gMSGameCriteria = new src.gms.GameCriteria();
		// Please uncomment the follow line and fill in parameter(s)
		//gMSGameCriteria.Id.eq();
		System.out.println(gMSGameCriteria.uniqueGame());
		
		System.out.println("Retrieving User by UserCriteria");
		UserCriteria gMSUserCriteria = new UserCriteria();
		// Please uncomment the follow line and fill in parameter(s)
		//gMSUserCriteria.Id.eq();
		System.out.println(gMSUserCriteria.uniqueUser());
		
		System.out.println("Retrieving Platform by PlatformCriteria");
		PlatformCriteria gMSPlatformCriteria = new PlatformCriteria();
		// Please uncomment the follow line and fill in parameter(s)
		//gMSPlatformCriteria.Id.eq();
		System.out.println(gMSPlatformCriteria.uniquePlatform());
		
	}
	
	
	public static void main(String[] args) {
		try {
			RetrieveAndUpdateGameData retrieveAndUpdateGameData = new RetrieveAndUpdateGameData();
			try {
				retrieveAndUpdateGameData.retrieveAndUpdateTestData();
				//retrieveAndUpdateGameData.retrieveByCriteria();
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
