public class MagicWeapon implements IDamage {
    private int damage;

    public MagicWeapon(WeaponType weaponType) {
        this.damage = weaponType.getDamage();
    }

    @Override
    public void applyDamage(GameCharacter character) {
        character.defend(damage);
    }
}
