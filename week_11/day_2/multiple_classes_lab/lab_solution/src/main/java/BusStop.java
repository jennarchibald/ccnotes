import java.util.ArrayList;

public class BusStop {
    private String name;
    private ArrayList<Person> queue;

    public BusStop(String name) {
        this.name = name;
        this.queue = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public int getQueueCount() {
        return queue.size();
    }

    public void addPerson(Person person) {
        queue.add(person);
    }

    public Person removePerson() {
        return queue.remove(0);
    }
}
