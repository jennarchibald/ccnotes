public class GameCharacter {
    private int health;
    private IDamage weapon;

    public GameCharacter(IDamage weapon) {
        this.health = 100;
        this.weapon = weapon;
    }

    public void setWeapon(IDamage weapon) {
        this.weapon = weapon;
    }

    public void attack(GameCharacter enemy) {
        weapon.applyDamage(enemy);
    }

    public void defend(int damage) {
        health -= damage;
    }
}
