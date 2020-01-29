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

machineGun = createWeapon(oShootBullet, 16, 16, 120, mb_left);
plasmaGun = createWeapon(oShootPlasma, 30, 12, 40, mb_right);

bombs = 3;