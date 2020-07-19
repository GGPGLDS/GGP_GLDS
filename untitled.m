 TrX = cat(2, TRdata, TEdata);
 
 figure()
for i = [3,4,5]
j=1
subplot(3,3,(j-1)*3+(i-2))

plot([446:455], X_reconp_avg_GGPLDS1(i,1:10), 'b','LineWidth', 1.2);
hold on;
plot([446:455], X_reconp_avg_SGLDS(i,1:10), 'k','LineWidth', 1.2);
hold on;
plot([360:445],TrX(i,360:445),'r','LineWidth', 1.2)
hold on
plot([446:455],TrX(i,446:455),'r','LineWidth', 1.2)
hold on
xline(446,'--k');
hold off

    title(sprintf('observation dimension %d ',i));

legend('GGPLDS','SGLDS','Training','Real');

j=2;
subplot(3,3,(j-1)*3+(i-2))
plot([446:455], X_reconp_avg_GGPLDS1(i,1:10), 'b','LineWidth', 1.2);
hold on;
plot([446:455], X_reconp_avg_TrSLDS2(i,1:10), 'k','LineWidth', 1.2);
hold on;
plot([360:445],TrX(i,360:445),'r','LineWidth', 1.2)
hold on
plot([446:455],TrX(i,446:455),'r','LineWidth', 1.2)
hold on
xline(446,'--k');
hold off

legend('GGPLDS','TrLDS','Training','Real');



j=3
subplot(3,3,(j-1)*3+(i-2))
plot([446:455], X_reconp_avg_GGPLDS1(i,1:10), 'b','LineWidth', 1.2);
hold on;
plot([446:455], X_reconp_avg_TCRCP1(i,1:10), 'k','LineWidth', 1.2);
hold on;
plot([360:445],TrX(i,360:445),'r','LineWidth', 1.2)
hold on
plot([446:455],TrX(i,446:455),'r','LineWidth',1.2)
hold on
xline(446,'--k');
hold off

legend('GGPLDS','TCRCP','Training','Real');



end
suptitle('Prediction Comparision on Lorenz')
fig1=figure;
fig1.Renderer='Painters';
fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];





 TrX = cat(2, TRdata, TEdata);
for i = [3,4,5]
figure()
%xxx=[446:455];
%shadedErrorBar(xxx,temp11,{@mean,@(xxx) 2*std(xxx)},'lineProps',{'b','markerfacecolor','r'})
% std_temp11 = std(temp11);
% curve11 = MyX(i,78:end) + 2*std_temp11;
% curve12 = MyX(i,78:end) - 2*std_temp11;
% x2 = [[78:84], fliplr([78:84])];
% inBetween = [curve11, fliplr(curve12)];
% fill(x2, inBetween, '--g');
plot([446:455], X_reconp_avg_GGPLDS1(i,1:10), 'b','LineWidth', 2);
hold on;
plot([446:455], X_reconp_avg_SGLDS(i,1:10), 'g','LineWidth', 2);
hold on;
plot([446:455], X_reconp_avg_TrSLDS2(i,1:10), 'y','LineWidth', 2);
hold on;
plot([446:455], X_reconp_avg_TCRCP1(i,1:10), 'k','LineWidth', 2);
hold on;
%             plot([446:455], X_reconp_avg_GGPLDS(i,1:10), 'b');
%             hold on
plot([360:445],TrX(i,360:445),'r','LineWidth', 2)
hold on
plot([446:455],TrX(i,446:455),'r','LineWidth', 2)
hold on
xline(446,'--k');
hold off
title(sprintf('observation dimension %d ',i));
legend('GGPLDS','SGLDS','TrLSDS','TCRCP','Training','Real','');
end

















figure
for i = 1:3
for cc =1:4
%subplot(2,3,k)
if i ==1
subplot(3,5,cc)
community_new_k(:,:,cc)=theta_new2(:,cc)*r_new(cc)*psi_new2(cc,:);
imagesc(community_new_k(:,:,cc)./(lambda_ij_new+1e-1))
title(['Community ',num2str(cc)],'FontSize', 12)
caxis([0 1]);
elseif i==2
if cc==1
subplot(3,5,5*(i-1)+cc)
plot((temptemp(3,:,cc)))
xlim([0 100])
ylabel(['AZ'],'FontSize', 12)
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
ylim([-3 3])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
elseif cc==2
subplot(3,5,5*(i-1)+cc)
plot((temptemp(3,:,cc)))
xlim([0 100])
ylim([-1 3])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
elseif cc==3
subplot(3,5,5*(i-1)+cc)
plot((temptemp(3,:,cc)))
xlim([0 100])
ylim([-3 0])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
elseif cc==4
subplot(3,5,5*(i-1)+cc)
plot((temptemp(3,:,cc)))
xlim([0 100])
ylim([-2 1])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
end
elseif i==3
if cc==1
subplot(3,5,5*(i-1)+cc)
plot((temptemp(12,:,cc)))
xlim([0 100])
ylabel(['HI'],'FontSize', 12)
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
ylim([-3 3])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
end
if cc==2
subplot(3,5,5*(i-1)+cc)
plot((temptemp(12,:,cc)))
xlim([0 100])
ylim([-1 3])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
end
if cc==3
subplot(3,5,5*(i-1)+cc)
plot((temptemp(12,:,cc)))
xlim([0 100])
ylim([-3 0])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
end
if cc==4
subplot(3,5,5*(i-1)+cc)
plot((temptemp(12,:,cc)))
xlim([0 100])
ylim([-2 1])
% title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
end
end
end
if i==1
subplot(3,5,5*(i-1)+cc+1)
imagesc(p_ij)
title(['$1-e^{-\sum_{\kappa}r_{\kappa} \theta_{i\kappa} \psi_{\kappa j}} $'],'interpreter','latex','FontSize', 14)
%title(['1-exp({-\Sigma_{\kappa}r_{\kappa}\theta_{i\kappa}\psi_{\kappa j}})' ],'FontSize', 12)
caxis([0 1]);
elseif i ==2
hhhh= sum(temptemp,3);
subplot(3,5,5*(i-1)+cc+1)
plot(X_recon(3,1:77))
hold on
% plot(X_recon_avg1(i,:))
% hold on
plot(X_orig_avg1(3,1:77))
xlim([0 100])
% plot(X_recon_avg1(i,:))
elseif i == 3
hhhh= sum(temptemp,3);
subplot(3,5,5*(i-1)+cc+1)
plot(X_recon(12,1:77))
hold on
% plot(X_recon_avg1(i,:))
% hold on
plot(X_orig_avg1(12,1:77))
xlim([0 100])
% plot(X_recon_avg1(i,:))
end
end
suptitle('Prediction Comparision on Lorenz', 'FontSize',14)
fig1=figure;
fig1.Renderer='Painters';
fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];


     figure
     jj=1;
          for i = [3,12,16,24,36,48]
                
                for cc = 1:4
                    subplot(6,5,5*(jj-1)+cc)
                    plot((temptemp(i,:,cc)))
                    xlim([0 100])
                    
                        
                    if jj==1
                        title(['Community ',num2str(cc)],'FontSize', 9)
                    end
                    
                    if cc==1
                        ylabel(stac(i,:),'FontSize', 9)
                        hYLabel = get(gca,'YLabel');
                        set(hYLabel,'rotation',0,'VerticalAlignment','middle')
                        ylim([-10 3])
                        %title(['d',num2str(i)],'FontSize', 9,'position',[-200 0])
                    elseif cc==2
                         ylim([-1 3])   
                    elseif cc==3
                          ylim([-4 4])  
                    elseif cc==4
                          ylim([-2 2])  
                            
                    end

                end
                hhhh= sum(temptemp,3);
                subplot(6,5,5*(jj-1)+cc+1)
              
                plot (X_recon(i,1:77));
                hold on
               % plot(X_recon_avg1(i,:))
               % hold on
                plot(X_orig_avg1(i,:))
                xlim([0 100])
            % plot(X_recon_avg1(i,:))
            jj=jj+1;
            end

        suptitle('Data reconstruction from each community on each dimension')
        fig1=figure;
        fig1.Renderer='Painters';

        fig = gcf;
        fig.PaperPositionMode = 'auto'
        fig_pos = fig.PaperPosition;
        fig.PaperSize = [fig_pos(3) fig_pos(4)];