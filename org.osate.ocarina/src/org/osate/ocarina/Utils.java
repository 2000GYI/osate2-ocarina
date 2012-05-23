package org.osate.ocarina;

import java.io.File;

import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.MessageConsole;

public class Utils {

	/**
	 * Check that Ocarina is correctly installed
	 * @param window
	 * @return Return True is Ocarina is correctly installed
	 */
	public static boolean checkOcarina(IWorkbenchWindow window) {
		File ocarinaBinary = null;
		String ocarinaPath = PreferencesValues.getOCARINA_PATH();
	
		if (!isWindows()) {
			ocarinaBinary = new File(ocarinaPath + "ocarina");
		} else {
			ocarinaBinary = new File(ocarinaPath + "ocarina.exe");
		}

		if (!ocarinaBinary.isFile()) {
			MessageDialog.openInformation(window.getShell(),
					PreferenceConstants.PLUGIN_ID,
					"Path to Ocarina is not set up, update your preferences");
			return false;
		}
		return true;
	}
	
	// Returns the path to cheddar or null of it does not exist
	public static String getCheddarPath() {
		String executablePath = PreferencesValues.getCHEDDAR_PATH();
	
		if (!isWindows()) {
			executablePath += "cheddar";
			
		} else {
			executablePath += "cheddar.exe";
		}
		
		return new File(executablePath).isFile() ? executablePath : null; 
	}

	// Returns the path to cheddarlite or null of it does not exist
	public static String getCheddarlitePath() {
		String executablePath = PreferencesValues.getCHEDDAR_PATH();
	
		if (!isWindows()) {
			executablePath += "cheddarlite";
			
		} else {
			executablePath += "cheddarlite.exe";
		}
		
		return new File(executablePath).isFile() ? executablePath : null; 
	}
	
	public static int returnValue() {
		if (!isWindows())
			return 0;
		else
			return 2; // TODO
	}

	/**
	 * Return true if the execution platform is Windows
	 * @return True if the execution platform is Windows
	 */
	public static boolean isWindows() {
		String os = System.getProperty("os.name").toLowerCase();
		return (os.indexOf("win") >= 0);
	}

	/**
	 * Return a handle to a console for displaying status
	 * @param name name of the console
	 * @return a handle to a console
	 */
	public static MessageConsole findConsole(String name) {
		ConsolePlugin plugin = ConsolePlugin.getDefault();
		IConsoleManager conMan = plugin.getConsoleManager();
		IConsole[] existing = conMan.getConsoles();
		for (int i = 0; i < existing.length; i++)
			if (name.equals(existing[i].getName()))
				return (MessageConsole) existing[i];
		// No console found, so create a new one
		MessageConsole myConsole = new MessageConsole(name, null);
		conMan.addConsoles(new IConsole[]{myConsole});
		return myConsole;
	   }

	public static void showConsole(IConsole console) {
		IWorkbench workbench = PlatformUI.getWorkbench();
		IWorkbenchWindow window = workbench.getActiveWorkbenchWindow();
		if (window != null) {
			IWorkbenchPage page = window.getActivePage();
			if (page != null) {
				try
				{
					IConsoleView view = (IConsoleView) page
							.showView(IConsoleConstants.ID_CONSOLE_VIEW);
					view.display(console);
				} catch (PartInitException e)
				{
					throw new RuntimeException(e);
				}
			}
		}
	}
	
}
