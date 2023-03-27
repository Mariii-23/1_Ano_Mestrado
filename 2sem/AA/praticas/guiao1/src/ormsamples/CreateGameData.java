/**
 * Licensee: Mariana Dinis Rodrigues(Universidade do Minho)
 * License Type: Academic
 */
package src.ormsamples;

import org.orm.*;
import src.gms.*;

public class CreateGameData {
	public void createTestData() throws PersistentException {
		PersistentTransaction t = GamePersistentManager.instance().getSession().beginTransaction();
		try {
			GMS gMSGMS = GMSDAO.createGMS();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : user
			GMSDAO.save(gMSGMS);
			// Game gMSGame = GameDAO.createGame();
			Game gMSGame = GameDAO.createGame("jogo1", 123, 12,"Jogo 1 hehehh");
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : price, year, platform
			GameDAO.save(gMSGame);
			User gMSUser = UserDAO.createUser();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : game
			UserDAO.save(gMSUser);
			Platform gMSPlatform = PlatformDAO.createPlatform();
			// TODO Initialize the properties of the persistent object here, the following properties must be initialized before saving : year
			PlatformDAO.save(gMSPlatform);
			t.commit();
		}
		catch (Exception e) {
			t.rollback();
		}
		
	}
	
	public static void main(String[] args) {
		try {
			CreateGameData createGameData = new CreateGameData();
			try {
				createGameData.createTestData();
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
