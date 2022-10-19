%% Filter    
ace=detrend(e);
acn=detrend(n);
acz=detrend(z);
%% Plot Acceleration
subplot (311);
plot(ace,'b');
title('EW Component');
xlabel('Time');
ylabel('m/s2');

subplot (312);
plot(acn,'b');
title('NS Component');
xlabel('Time');
ylabel('m/s2');

subplot (313);
plot(acz,'b');
title('UP Component');
xlabel('Time');
ylabel('m/s2');
%% Plot Velocity
ev=cumtrapz(ace)./100;
nv=cumtrapz(acn)./100;
zv=cumtrapz(acz)./100;

subplot (311);
plot(ev,'b');
title('EW Component');
xlabel('Time');
ylabel('m/s');

subplot (312);
plot(nv,'b');
title('NS Component');
xlabel('Time');
ylabel('m/s');

subplot (313);
plot(zv,'b');
title('UP Component');
xlabel('Time');
ylabel('m/s');

%% Plot Position
ep=cumtrapz(ev)./100;
np=cumtrapz(nv)./100;
zp=cumtrapz(zv)./100;

subplot (311);
plot(ep,'b');
title('EW Component');
xlabel('Time');
ylabel('m');

subplot (312);
plot(np,'b');
title('NS Component');
xlabel('Time');
ylabel('m');

subplot (313);
plot(zp,'b');
title('UP Component');
xlabel('Time');
ylabel('m');
%% Plot EW
subplot (311);
plot(e,'b');
title('EW Tehoru Acceleration');
xlabel('Time');
ylabel('m/s2');

subplot (312);
plot(ev,'b');
title('EW Tehoru Velocity');
xlabel('Time');
ylabel('m/s');

subplot (313);
plot(ep,'b');
title('EW Tehoru Displacement');
xlabel('Time');
ylabel('m');
%% Plot NS
subplot (311);
plot(n,'b');
title('NS Tehoru Acceleration');
xlabel('Time');
ylabel('m/s2');

subplot (312);
plot(nv,'b');
title('NS Tehoru Velocity');
xlabel('Time');
ylabel('m/s');

subplot (313);
plot(np,'b');
title('NS Tehoru Displacement');
xlabel('Time');
ylabel('m');

%% Plot UP
subplot (311);
plot(z,'b');
title(' UP Tehoru Acceleration');
xlabel('Time');
ylabel('m/s2');

subplot (312);
plot(zv,'b');
title('UP Tehoru Velocity');
xlabel('Time');
ylabel('m/s');

subplot (313);
plot(zp,'b');
title('UP Tehoru Displacement');
xlabel('Time');
ylabel('m');
