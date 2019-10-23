package Modelo;

/**
 *
 * @author Nathan
 */
import Auxiliar.*;
import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;
import javax.swing.JOptionPane;

public class ConexionEstatica {

    //********************* Atributos *************************
    private static java.sql.Connection Conex;
    //Atributo a través del cual hacemos la conexión física.
    private static java.sql.Statement Sentencia_SQL;
    //Atributo que nos permite ejecutar una sentencia SQL
    private static java.sql.ResultSet Conj_Registros;

    public static void nueva() {
        try {
            //Cargar el driver/controlador
            String controlador = "com.mysql.jdbc.Driver";
            //String controlador = "oracle.jdbc.driver.OracleDriver";
            //String controlador = "sun.jdbc.odbc.JdbcOdbcDriver"; 
            //String controlador = "org.mariadb.jdbc.Driver"; // MariaDB la version libre de MySQL (requiere incluir la librería jar correspondiente).
            //Class.forName(controlador).newInstance();
            Class.forName(controlador);

            String URL_BD = "jdbc:mysql://localhost/" + Constantes.BBDD;
            //String URL_BD = "jdbc:mariadb://"+this.servidor+":"+this.puerto+"/"+this.bbdd+"";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:oracle:oci:@REPASO";
            //String URL_BD = "jdbc:odbc:REPASO";

            //Realizamos la conexión a una BD con un usuario y una clave.
            Conex = java.sql.DriverManager.getConnection(URL_BD, Constantes.usuario, Constantes.password);
            Sentencia_SQL = Conex.createStatement();
            System.out.println("Conexion realizada con éxito");
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
        }
    }

    public static void cerrarBD() {
        try {
            // resultado.close();
            Conex.close();
            System.out.println("Desconectado de la Base de Datos"); // Opcional para seguridad
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error de Desconexion", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static Usuario existeUsuario(String email, String password) {
        Usuario existe = null;
        try {
            String sentencia1 = "SELECT * FROM Usuarios, Asignar_Rol WHERE email = '" + email + "' and password = '" + password + "' and Usuarios.cod_user = Asignar_Rol.cod_user";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia1);
            if (ConexionEstatica.Conj_Registros.next())//Si devuelve true es que existe.
            {
                existe = new Usuario(Conj_Registros.getInt("cod_user"), Conj_Registros.getString("nombre"), Conj_Registros.getString("apellidos"), Conj_Registros.getInt("cod_rol"), Conj_Registros.getString("email"), Conj_Registros.getString("password"));
            }
        } catch (SQLException ex) {
            System.out.println("Error en el acceso a la BD.");
        }
        return existe;//Si devolvemos null el usuario no existe.
    }

    /**
     * Usando una LinkedList.
     *
     * @return
     */
    public static ListaUsuarios obtenerPersonas() {
        ListaUsuarios lis = new ListaUsuarios();
        Usuario u = null;
        try {
            String sentencia = "SELECT * FROM Usuarios";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while (Conj_Registros.next()) {
                u = new Usuario(Conj_Registros.getInt("cod_user"), Conj_Registros.getString("nombre"), Conj_Registros.getString("apellidos"), Conj_Registros.getString("email"), Conj_Registros.getString("password"));
                lis.add(u);
            }
        } catch (SQLException ex) {
        }
        return lis;
    }

    /**
     * Usando una tabla Hash.
     *
     * @return
     */
    /*public static HashMap<String, Persona> obtenerPersonas2() {
        HashMap<String, Persona> personos = new HashMap<String, Persona>();
        Persona p = null;
        try {
            String sentencia = "SELECT * FROM personas";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while (Conj_Registros.next()) {
                p = new Persona(Conj_Registros.getString("DNI"), Conj_Registros.getString("nombre"), Conj_Registros.getInt("Tfno"));;
                personos.put(p.getDNI(), p);
            }
        } catch (SQLException ex) {
        }
        return personos;
    }*/
    //----------------------------------------------------------
    public static void Borrar_Rol(int cod_user, int cod_rol) throws SQLException {
        String Sentencia = "DELETE FROM Asignar_Rol WHERE cod_user = '" + cod_user + "' AND cod_rol = '" + cod_rol + "'";
        Sentencia_SQL.executeUpdate(Sentencia);
    }

    //----------------------------------------------------------
    public static void Insertar_Usuario(int n, String nombre, String apellidos, String email, String password) throws SQLException {
        String Sentencia = "INSERT INTO Usuarios VALUES ('" + n + "','" + nombre + "','" + apellidos + "','" + email + "','" + password + "')";
        Sentencia_SQL.executeUpdate(Sentencia);
    }

    //----------------------------------------------------------
    public static void Insertar_Rol(int cod_user, int cod_rol) throws SQLException {
        String Sentencia = "INSERT INTO Asignar_Rol VALUES ('" + cod_user + "','" + cod_rol + "')";
        Sentencia_SQL.executeUpdate(Sentencia);
    }

    //----------------------------------------------------------
    public static void Borrar_Usuario(String email) throws SQLException {
        String Sentencia = "DELETE FROM Usuarios WHERE email = '" + email + "'";
        Sentencia_SQL.executeUpdate(Sentencia);
    }

    public static ListaAulas obtenerAulas() {
        ListaAulas lis = new ListaAulas();
        Aula a = null;
        try {
            String sentencia = "SELECT * FROM Aulas";
            ConexionEstatica.Conj_Registros = ConexionEstatica.Sentencia_SQL.executeQuery(sentencia);
            while (Conj_Registros.next()) {
                a = new Aula(Conj_Registros.getInt("cod_aula"), Conj_Registros.getString("descripcion"));
                lis.add(a);
            }
        } catch (SQLException ex) {
        }
        return lis;
    }

}
