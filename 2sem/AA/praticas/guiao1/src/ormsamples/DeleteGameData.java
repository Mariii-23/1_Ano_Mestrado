/**
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */
package src.ormsamples;

import org.orm.*;
import src.gms.*;

public class DeleteGameData {
	public void deleteTestData() throws PersistentException {
		PersistentTransaction t = GamePersistentManager.instance().getSession().beginTransaction();
		try {
			GMS gMSGMS = GMSDAO.loadGMSByQuery(null, null);
			// Delete the persistent object
			GMSDAO.delete(gMSGMS);
			Game gMSGame = GameDAO.loadGameByQuery(null, null);
			// Delete the persistent object
			GameDAO.delete(gMSGame);
			User gMSUser = UserDAO.loadUserByQuery(null, null);
			// Delete the persistent object
			UserDAO.delete(gMSUser);
			Platform gMSPlatform = PlatformDAO.loadPlatformByQuery(null, null);
			// Delete the persistent object
			PlatformDAO.delete(gMSPlatform);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		
	}
	
	public static void main(String[] args) {
		try {
			DeleteGameData deleteGameData = new DeleteGameData();
			try {
				deleteGameData.deleteTestData();
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
