star = false;

shield = false;

hit = false;
hitDuration = 1*60;
hitCount = 0;

alphaInc = 0.25;

maxSpeed = 8;
Speed = 0;
Direction = 0;
//acceleration = 1;

machineGun = createWeapon(oShootBullet, 12, 16, 999999, mb_left);
plasmaGun = createWeapon(oShootPlasma, 60, 12, 10, mb_right);

bombs = 3;