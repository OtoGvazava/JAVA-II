package utils;

import models.Student;

public class StudentUtil {
    private StudentUtil() {

    }

    public static Student getStudent(String firstName, String lastName) {
        return new Student(firstName, lastName);
    };
}
