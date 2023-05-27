clc; clear all;

folder = 'data_training';
file = dir(fullfile(folder, '*.jpg'));
jumlah = numel(file);

ciri = zeros(jumlah, 4);
target = cell(jumlah, 1);

for i = 1:jumlah
    img = im2double(imread(fullfile(folder, file(i).name)));
    img_gray = rgb2gray(img);
    
%     se = strel('diamond', 4)
%     dil = imdilate(img_gray, se);
% 
%     bw = imbinarize(dil);
%     bw = imcomplement(bw);
%     figure, imshow(bw)
%     stats = regionprops(bw,'Area','Perimeter','Eccentricity');
%     area = stats.Area;
%     perimeter = stats.Perimeter;
%     metric = 4*pi*area/(perimeter^2);
%     eccentricity = stats.Eccentricity;

%     ciri(i,1) = metric;
%     ciri(i,2) = eccentricity;
%     ciri(i,3) = area;
%     ciri(i,4) = perimeter;

%     GLCM = graycomatrix(img_gray, 'Offset',[2, 0],'Symmetric',true);
%     stats = graycoprops(GLCM,{'Contrast','Correlation','Energy','Homogeneity'});
%     Correlation = mean(stats.Correlation);
%     Contrast = mean(stats.Contrast);
%     Energy = mean(stats.Energy);
%     Homogeneity = mean(stats.Homogeneity);
% 
%     ciri(i,1) = Correlation;
%     ciri(i,2) = Contrast;
%     ciri(i,3) = Energy;
%     ciri(i,4) = Homogeneity;
end

for i = 1:42 
     target{i} = 'ba';
 end

 for i = 43:84
     target{i} = 'er';
 end

 for i = 85:126
     target{i} = 'jiu';
 end

 for i = 127:168
     target{i} = 'ling';
 end

 for i = 169:210
     target{i} = 'liu';
 end

 for i = 211:252
     target{i} = 'qi';
 end

 for i = 253:294
     target{i} = 'san';
 end

 for i = 295:336
     target{i} = 'shi';
 end

 for i = 337:378
     target{i} = 'si';
 end

 for i = 379:420
     target{i} = 'wu';
 end

  for i = 421:462
     target{i} = 'yi';
 end


Mdl = fitcknn(ciri,target,'NumNeighbors',9,'Distance','minkowski','Standardize',1);
hasil = predict(Mdl,ciri);

%menghitung akurasi
benar = 0;
data = size(ciri,1);
for i=1:data
    if isequal(hasil{i},target{i})
        benar = benar + 1;
    end
end

Akurasi_Train_KNN = benar/data*100

save Mdl Mdl

filename = 'ciri_latih.xlsx';
xlswrite(filename,ciri)
