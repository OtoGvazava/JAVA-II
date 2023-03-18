package com.example.management_system.utils;

import com.example.management_system.models.Person;

import java.util.ArrayList;
import java.util.List;

public class PersonUtil {
    private static PersonUtil _instance;
    private final List<Person> listOfPerson;
    private PersonUtil() {
        listOfPerson = new ArrayList<>();
    }

    public List<Person> getListOfPerson() {
        return listOfPerson;
    }

    public void addPerson(Person person) {
        listOfPerson.add(person);
    }

    public boolean removePerson(int index) {
        return listOfPerson.remove(index) != null;
    }

    public static PersonUtil getInstance() {
        if (_instance == null) {
            _instance = new PersonUtil();
        }

        return _instance;
    }
}
