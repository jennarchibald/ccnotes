public class Runner {
    public static void main(String[] args) {
        GameCharacter hero = new GameCharacter(new Weapon(WeaponType.SWORD));

        MagicWeapon staff = new MagicWeapon(WeaponType.STAFF);
        GameCharacter mage = new GameCharacter(staff);

        GameCharacter enemy = new GameCharacter(new Weapon(WeaponType.DAGGER));

        hero.setWeapon(staff);
        hero.attack(enemy);
    }
}
