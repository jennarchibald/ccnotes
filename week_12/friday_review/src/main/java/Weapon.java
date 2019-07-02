public class Weapon implements IDamage {
    private int damage;
    private int durability;

    public Weapon(WeaponType weaponType) {
        this.damage = weaponType.getDamage();
        durability = 100;
    }

    @Override
    public void applyDamage(GameCharacter character) {
        durability--;
        character.defend(damage);
    }

    public void repair() {
        durability = 100;
    }
}
