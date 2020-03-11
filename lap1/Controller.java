package lap1;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.TextField;

import java.net.URL;
import java.util.ArrayList;
import java.util.ResourceBundle;


public class Controller implements Initializable {
    @FXML
    private TextField txtName;
    @FXML
    private TextField txtAge;
    @FXML
    private TextField txtMark;

    public static ArrayList<lab1.Student> list = new ArrayList<>();

    /**
     * Called to initialize a controller after its root element has been
     * completely processed.
     *
     * @param location  The location used to resolve relative paths for the root object, or
     *                  <tt>null</tt> if the location is not known.
     * @param resources The resources used to localize the root object, or <tt>null</tt> if
     */
    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }

    @FXML
    public void register(ActionEvent actionEvent) {
        lab1.Student st = new lab1.Student();
        st.setName(txtName.getText());
        st.setAge(Integer.parseInt(txtAge.getText()));
        st.setMark(Float.parseFloat(txtMark.getText()));
        list.add(st);
        for (lab1.Student stu: list) {
            System.out.println("---------------------");
            System.out.println("- Name : "+stu.getName() + "\n- Age : " + stu.getAge() + "\n- Mark : " + stu.getMark());
        }

    }
}