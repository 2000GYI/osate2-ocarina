/*
* generated by Xtext
*/
package org.osate.ocarina.real.xtext;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class REALUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return org.osate.ocarina.real.xtext.ui.internal.REALActivator.getInstance().getInjector("org.osate.ocarina.real.xtext.REAL");
	}
	
}
