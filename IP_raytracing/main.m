%�������ڷ��滷���У��õ�����ָ�ƿ⣬�Լ����߽׶εĲ������ݣ������Ժ�Ķ�λ���ԡ�

%% �������߸��ټ������ɷ��滷��
if ~exist('radio_map_20_15.mat', 'file') %�����û�����ɷ��滷��
    disp('����ģ�����߸���...');
    generate_radio_map(0.01);
end

clc
clear;
load radio_map_20_15.mat; 
%����Ϊfingerprint %Ĭ�ϳߴ�Ϊ20m*15m * 6ap�������СΪ0.01m
%ע�⣺����ķ��滷����fingerprint����һ�����Ⱥܸߵ�ָ�ƿ⣬�����������滷���н���ȡ�����ɼ����ݣ����������ڶ�λ��ָ�ƿ⡣

%% ��ȡ����ָ�ƿ�
%ֱ�Ӳ��������Ҫ�о�ָ�ƿ⹹���ϵ��Ż������ⲿ�ָĽ�
fp = get_offline_data(fingerprint);
save('offline_data_fp', 'fp');

%% ��ȡ���߶�λ�׶ε�����5
%ǰ��Ĭ�ϵ����ݼ����ܶ���0.01m�������Ļ���������ϵͳ��λ����С�ֱ���Ϊ0.01m��trace����0.01��������
roomLength = 20;
roomWidth = 15;
t = 10000;
[ trace, rss ] = get_online_data( fingerprint, 0.01, roomLength, roomWidth, t ); %�õ��켣���Ӧ��RSS
save('online_data_trace', 'trace');
save('online_data_rss', 'rss');
%%
clear fingerprint;