clc; clear all;

%membaca folder/file
folder = 'test/sunflowers';
file = dir(fullfile(folder, '*.jpg'));
jumlah = numel(file);

%inisialisasi variabel untuk sebagai dataset
%3 akan diisi dengan nilai rgb
ciri_sunflowers = zeros(jumlah, 17);
%cell krn akan diisi string sdngkn zeros hanya bisa diisi angka
target_sunflowers = cell(jumlah, 1);

%pengolahan citra (untuk dataset)
for i = 1:jumlah
    %diubah mnjdi double agar menjadi nilai peksel berkisar antara 0 atau
    %1, krn knn biasanya menggunakan jarak untuk melakukan operasinya, dlm
    %data mining biasa disebut penyekalaan data
    img = im2double(imread(fullfile(folder, file(i).name)));
    img_gray = rgb2gray(img);

    %morfologi
    se = strel('diamond', 4)
    dil = imdilate(img_gray, se);
%     figure, imshow(dil);

    bw = imbinarize(dil);
%     figure, imshow(bw);

    %ekstraksi ciri
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    %menghitung rata" nilai per komponen
    Red = sum(sum(R))/sum(sum(bw));
    Green = sum(sum(G))/sum(sum(bw));
    Blue = sum(sum(B))/sum(sum(bw));
    
    %LAB
% LAB = rgb2lab(img);
% L = mean(mean(LAB(:,:,1)));
% A = mean(mean(LAB(:,:,2)));
% B = mean(mean(LAB(:,:,3)));



%     %standar deviasi
%     devR = std(std(double(R)));
%     devG = std(std(double(G)));
%     devB = std(std(double(B)));
% 
%     %skewness
%     skewR = skewness(skewness(double(G)));
%     skewG = skewness(skewness(double(G)));
%     skewB = skewness(skewness(double(B)));
% 
%     %entropy
%     entR = entropy(double(R));
%     entG = entropy(double(G));
%     entB = entropy(double(B));

    %HSV
    HSV = rgb2hsv(img);
    H = HSV(:,:,1);
    S = HSV(:,:,2);
    V = HSV(:,:,3);
    Hue = sum(sum(H))/sum(sum(bw));
    Saturation = sum(sum(S))/sum(sum(bw));
    Value = sum(sum(V))/sum(sum(bw));
% 
%     lbpLB1 = extractLBPFeatures(img_gray, 'Upright',false);
%     lb1 = sum(lbpLB1);
% 
    %GLCM
    pixel = 1;
    GLCM = graycomatrix(img_gray, 'Offset',[2, 0],'Symmetric',true);
    stats = graycoprops(GLCM,{'Contrast','Correlation','Energy','Homogeneity'});
    Correlation = mean(stats.Correlation);
    Contrast = mean(stats.Contrast);
    Energy = mean(stats.Energy);
    Homogeneity = mean(stats.Homogeneity);

    %mengisi tabel ciri_m (dataset yang sudah di deklarasikan sbg matriks zeros)
    ciri_sunflowers(i,1) = Red; %setelah dilakukan segmentasi
    ciri_sunflowers(i,2) = Green;
    ciri_sunflowers(i,3) = Blue;
    ciri_sunflowers(i,4) = Correlation;
    ciri_sunflowers(i,5) = Contrast;
    ciri_sunflowers(i,6) = Energy;
    ciri_sunflowers(i,7) = Homogeneity;
    ciri_sunflowers(i,8) = Hue;
    ciri_sunflowers(i,9) = Saturation;
    ciri_sunflowers(i,10) = Value;
%     ciri_sunflowers(i,11) = lb1;
%     ciri_sunflowers(i,12) = devR;
%     ciri_sunflowers(i,13) = devG;
%     ciri_sunflowers(i,14) = devB;
%     ciri_sunflowers(i,15) = skewR;
%     ciri_sunflowers(i,16) = skewR;
%     ciri_sunflowers(i,17) = skewR;
%     ciri_sunflowers(i,17) = entR;
%     ciri_sunflowers(i,18) = entG;
%     ciri_sunflowers(i,19) = entB;

    %mengisi variabel target berupa string
    target_sunflowers{i} = 'sunflowers';
end

%membaca folder/file
folder = 'test/roses';
file = dir(fullfile(folder, '*.jpg'));
jumlah = numel(file);

%inisialisasi variabel untuk sebagai dataset
%3 akan diisi dengan nilai rgb
ciri_roses = zeros(jumlah, 17);
%cell krn akan diisi string sdngkn zeros hanya bisa diisi angka
target_roses = cell(jumlah, 1);

%pengolahan citra (untuk dataset)
for i = 1:jumlah
    %diubah mnjdi double agar menjadi nilai peksel berkisar antara 0 atau
    %1, krn knn biasanya menggunakan jarak untuk melakukan operasinya, dlm
    %data mining biasa disebut penyekalaan data
    img = im2double(imread(fullfile(folder, file(i).name)));
    img_gray = rgb2gray(img);

    %morfologi
    se = strel('diamond', 4)
    dil = imdilate(img_gray, se);
%     figure, imshow(dil);

    bw = imbinarize(dil);
%     figure, imshow(bw);

    %ekstraksi ciri
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    %menghitung rata" nilai per komponen
    Red = sum(sum(R))/sum(sum(bw));
    Green = sum(sum(G))/sum(sum(bw));
    Blue = sum(sum(B))/sum(sum(bw));
    
    %LAB
% LAB = rgb2lab(img);
% L = mean(mean(LAB(:,:,1)));
% A = mean(mean(LAB(:,:,2)));
% B = mean(mean(LAB(:,:,3)));



%     %standar deviasi
%     devR = std(std(double(R)));
%     devG = std(std(double(G)));
%     devB = std(std(double(B)));
% 
%     %skewness
%     skewR = skewness(skewness(double(G)));
%     skewG = skewness(skewness(double(G)));
%     skewB = skewness(skewness(double(B)));
% % 
% %     %entropy
% %     entR = entropy(double(R));
% %     entG = entropy(double(G));
% %     entB = entropy(double(B));
% 
    %HSV
    HSV = rgb2hsv(img);
    H = HSV(:,:,1);
    S = HSV(:,:,2);
    V = HSV(:,:,3);
    Hue = sum(sum(H))/sum(sum(bw));
    Saturation = sum(sum(S))/sum(sum(bw));
    Value = sum(sum(V))/sum(sum(bw));
% 
%     lbpLB1 = extractLBPFeatures(img_gray, 'Upright',false);
%     lb1 = sum(lbpLB1);
% 
    %GLCM
    pixel = 1;
    GLCM = graycomatrix(img_gray, 'Offset',[2, 0],'Symmetric',true);
    stats = graycoprops(GLCM,{'Contrast','Correlation','Energy','Homogeneity'});
    Correlation = mean(stats.Correlation);
    Contrast = mean(stats.Contrast);
    Energy = mean(stats.Energy);
    Homogeneity = mean(stats.Homogeneity);

%     %mengisi tabel ciri_m (dataset yang sudah di deklarasikan sbg matriks zeros)
    ciri_roses(i,1) = Red; %setelah dilakukan segmentasi
    ciri_roses(i,2) = Green;
    ciri_roses(i,3) = Blue;
    ciri_roses(i,4) = Correlation;
    ciri_roses(i,5) = Contrast;
    ciri_roses(i,6) = Energy;
    ciri_roses(i,7) = Homogeneity;
    ciri_roses(i,8) = Hue;
    ciri_roses(i,9) = Saturation;
    ciri_roses(i,10) = Value;
%     ciri_roses(i,11) = lb1;
%     ciri_roses(i,12) = devR;
%     ciri_roses(i,13) = devG;
%     ciri_roses(i,14) = devB;
%     ciri_roses(i,15) = skewR;
%     ciri_roses(i,16) = skewR;
%     ciri_roses(i,17) = skewR;
%     ciri_roses(i,17) = entR;
%     ciri_roses(i,18) = entG;
%     ciri_roses(i,19) = entB;

    %mengisi variabel target berupa string
    target_roses{i} = 'roses';
end

%membaca folder/file
folder = 'test/daisy';
file = dir(fullfile(folder, '*.jpg'));
jumlah = numel(file);

%inisialisasi variabel untuk sebagai dataset
%3 akan diisi dengan nilai rgb
ciri_daisy = zeros(jumlah, 17);
%cell krn akan diisi string sdngkn zeros hanya bisa diisi angka
target_daisy = cell(jumlah, 1);

%pengolahan citra (untuk dataset)
for i = 1:jumlah
    %diubah mnjdi double agar menjadi nilai peksel berkisar antara 0 atau
    %1, krn knn biasanya menggunakan jarak untuk melakukan operasinya, dlm
    %data mining biasa disebut penyekalaan data
    img = im2double(imread(fullfile(folder, file(i).name)));
    img_gray = rgb2gray(img);

    %morfologi
    se = strel('diamond', 4)
    dil = imdilate(img_gray, se);
%     figure, imshow(dil);

    bw = imbinarize(dil);
%     figure, imshow(bw);

    %ekstraksi ciri
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);

    %menghitung rata" nilai per komponen
    Red = sum(sum(R))/sum(sum(bw));
    Green = sum(sum(G))/sum(sum(bw));
    Blue = sum(sum(B))/sum(sum(bw));
    
    %LAB
LAB = rgb2lab(img);
L = mean(mean(LAB(:,:,1)));
A = mean(mean(LAB(:,:,2)));
B = mean(mean(LAB(:,:,3)));



%     %standar deviasi
%     devR = std(std(double(R)));
%     devG = std(std(double(G)));
%     devB = std(std(double(B)));
% 
%     %skewness
%     skewR = skewness(skewness(double(G)));
%     skewG = skewness(skewness(double(G)));
%     skewB = skewness(skewness(double(B)));
% % 
% %     %entropy
% %     entR = entropy(double(R));
% %     entG = entropy(double(G));
% %     entB = entropy(double(B));
% 
    %HSV
    HSV = rgb2hsv(img);
    H = HSV(:,:,1);
    S = HSV(:,:,2);
    V = HSV(:,:,3);
    Hue = sum(sum(H))/sum(sum(bw));
    Saturation = sum(sum(S))/sum(sum(bw));
    Value = sum(sum(V))/sum(sum(bw));

%     lbpLB1 = extractLBPFeatures(img_gray, 'Upright',false);
%     lb1 = sum(lbpLB1);
% 
    %GLCM
    pixel = 1;
    GLCM = graycomatrix(img_gray, 'Offset',[2, 0],'Symmetric',true);
    stats = graycoprops(GLCM,{'Contrast','Correlation','Energy','Homogeneity'});
    Correlation = mean(stats.Correlation);
    Contrast = mean(stats.Contrast);
    Energy = mean(stats.Energy);
    Homogeneity = mean(stats.Homogeneity);

%     %mengisi tabel ciri_m (dataset yang sudah di deklarasikan sbg matriks zeros)
    ciri_daisy(i,1) = Red; %setelah dilakukan segmentasi
    ciri_daisy(i,2) = Green;
    ciri_daisy(i,3) = Blue;
    ciri_daisy(i,4) = Correlation;
    ciri_daisy(i,5) = Contrast;
    ciri_daisy(i,6) = Energy;
    ciri_daisy(i,7) = Homogeneity;
    ciri_daisy(i,8) = Hue;
    ciri_daisy(i,9) = Saturation;
    ciri_daisy(i,10) = Value;
%     ciri_daisy(i,11) = lb1;
%     ciri_daisy(i,12) = devR;
%     ciri_daisy(i,13) = devG;
%     ciri_daisy(i,14) = devB;
%     ciri_daisy(i,15) = skewR;
%     ciri_daisy(i,16) = skewR;
%     ciri_daisy(i,17) = skewR;
%     ciri_daisy(i,17) = entR;
%     ciri_daisy(i,18) = entG;
%     ciri_daisy(i,19) = entB;

    %mengisi variabel target berupa string
    target_daisy{i} = 'daisy';
end

training = [ciri_sunflowers;ciri_roses;ciri_daisy];
target = [target_sunflowers;target_roses;target_daisy];

%training dataset menggunakan algoritma knn
load Mdl3
%melakukan predict
hasil = predict(Mdl3,training);

%menghitung akurasi
benar = 0;
data = size(training,1);
for i=1:data
    if isequal(hasil{i},target{i})
        benar = benar + 1;
    end
end

Akurasi_Test_KNN_3_Classification = benar/data*100

