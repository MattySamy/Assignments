function [fs,n]= dtmf(key)
symbol = {'1','2','3','A','4','5','6','B','7','8','9','C','*','0','#','D'};
lfg = [697 770 852 941]; % Low frequency group
hfg = [1209 1336 1477 1633]; % High frequency group
dtmf  = [];
for c=1:4,
    for r=1:4,
        dtmf = [ dtmf [lfg(c);hfg(r)] ];
    end
end
n=200;
fs=400;
t =(0:n-1)/fs;
pit = 2*pi*t;
tones = zeros(n,size(dtmf,2));
for keypad=1:16,
    % Generate tone
    tones(:,keypad) = sum(sin(dtmf(:,keypad)*pit))';
    % Plot tone
    subplot(4,4,keypad),plot(t*1e3,tones(:,keypad));
    title(['Symbol "', symbol{keypad},'": [',num2str(dtmf(1,keypad)),',',num2str(dtmf(2,keypad)),']'])
    set(gca, 'Xlim', [1 200]);
    ylabel('Amplitude');
    if keypad>9, xlabel('Time (ms)'); end
end
%GUI
tones(:,key),fs,16;
sound(key)
end