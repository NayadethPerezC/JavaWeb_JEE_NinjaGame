package classes;


public class GeneradorAzar {
	
	//Genera un numero al azar entre el minimo y el maximo
	
	static public int generarInt(int min, int max) {
		int resultado =(int)Math.floor(Math.random()*(max - min + 1)) + min;
		return resultado;
	}
	
	static public int generarOros(String lugar) {
		if(lugar.equals("farm")) {
			return generarInt(10, 20);
		}
		else if(lugar.equals("cave")) {
			return generarInt(5,10);
		}
		else if(lugar.equals("house")) {
			return generarInt(2,5);
		}
		else if(lugar.equals("casino")) {
			return generarInt(-50,50);
		}
		else {
			return 0;
		}
	}

}
