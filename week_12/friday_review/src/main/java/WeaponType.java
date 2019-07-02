public enum WeaponType {
    DAGGER(5),
    SWORD(10),
    STAFF(7);

    private final int damage;

    WeaponType(int damage) {
        this.damage = damage;
    }

    public int getDamage() {
        return damage;
    }
}
