
clear all

tmps =[];  tmps = randn(60,1);
mean(tmps)

% labeling
labels(1:60, 1) = 1; labels(61:120, 1) = 2;

% create features
feats = [];
w = [0:0.1:0.3]; % mean
v = [0.1:0.1:2.3];
for j = 1:6424
    idw1 = []; idw1 = randperm(length(w), 1);
    idv1 = []; idv1 = randperm(length(v), 1);
    tmps =[];  tmps = randn(60,1); tmps = tmps./sqrt(var(tmps)) - mean(tmps);
    feats(1:60, j) = w(idw1) + sqrt(v(idv1)).*tmps;

    idw2 = []; idw2 = randperm(length(w), 1);
    idv2 = []; idv2 = randperm(length(v), 1);
    tmps2 =[];  tmps2 = randn(60,1); tmps2 = tmps2./sqrt(var(tmps2)) - mean(tmps2);
    feats(61:120, j) =  w(idw2) + sqrt(v(idv2)).*tmps2;
end
