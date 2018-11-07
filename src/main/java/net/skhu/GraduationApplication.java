package net.skhu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.File;


@SpringBootApplication
public class GraduationApplication {

    public static String UPLOAD_DIR = "upload-dir";
    public static String UPLOAD_DIR_PATH;


    public static void main(String[] args) {
        File f = new File(UPLOAD_DIR);
        f.mkdir();
        UPLOAD_DIR_PATH = f.getAbsolutePath();

        System.out.println("UploadPath : " + UPLOAD_DIR_PATH);


        SpringApplication.run(GraduationApplication.class, args);
    }
}
