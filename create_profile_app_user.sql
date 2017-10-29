drop profile APP_USER;
create profile APP_USER limit
sessions_per_user unlimited
password_lock_time 1
password_life_time 180;
