
public class Jugador {

    // Atributos
    private String nombre;
    private int edad;
    private String sexo;
    private int posicion;

    public Jugador(String nombre, int edad, String sexo, int posicion) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.posicion = posicion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public int getPosicion() {
        return posicion;
    }

    public void setPosicion(int posicion) {
        this.posicion = posicion;
    }

    @Override
    public String toString() {
        return "Jugador{" +
                "nombre='" + nombre + '\'' +
                ", edad=" + edad +
                ", sexo='" + sexo + '\'' +
                ", posicion=" + posicion +
                '}';
    }

    public void celebrarVictoria() {
        System.out.println("¡Yujuuu, soy rico! ¡Me voy de vacaciones!");
    }
}

