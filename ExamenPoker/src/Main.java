
import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {


        ArrayList<Jugador> jugadores = new ArrayList<>();

        Jugador j1 = new Jugador("Ana", 25, "Femenino", 1);
        Jugador j2 = new Jugador("Carlos", 30, "Masculino", 2);
        Jugador j3 = new Jugador("Laura", 28, "Femenino", 3);
        Jugador j4 = new Jugador("Pedro", 35, "Masculino", 4);
        Jugador j5 = new Jugador("Sofia", 22, "Femenino", 5);
        Jugador j6 = new Jugador("David", 31, "Masculino", 6);

        jugadores.add(j1);
        jugadores.add(j2);
        jugadores.add(j3);
        jugadores.add(j4);
        jugadores.add(j5);
        jugadores.add(j6);

        System.out.println("=== LISTA DE JUGADORES ===");

        for (Jugador jugador : jugadores) {
            System.out.println(jugador);
        }

        Jugador ganador = null;

        for (Jugador jugador : jugadores) {
            if (jugador.getPosicion() == 1) {
                ganador = jugador;
                break;
            }
        }

        if (ganador != null) {
            System.out.println("\n=== GANADOR DEL TORNEO ===");
            System.out.println("El ganador es: " + ganador.getNombre());

            ganador.celebrarVictoria();
        }
    }
}
