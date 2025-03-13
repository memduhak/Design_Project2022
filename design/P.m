s = tf('s');  % Transfer fonksiyon değişkeni tanımlandı
P = 10 / ((s+1)*(s+10)); 

figure(1) 
rlocus(P)  % Kök yerleşim grafiği çizildi
axis([-11 0 -10 10]) 
sgrid(0.516,0) 
hold on 

wd = pi/2; 
plot([-11 0],[wd,wd],'--', 'LineWidth', 0.5); 
plot([-3 0.5],[-wd -wd],'--','LineWidth',0.5); 

C1 = K; 
Tcl = feedback(C1*P,1);  % Kapalı çevrim transfer fonksiyonu
stepinfo(Tcl)  % Adım yanıtı bilgileri

