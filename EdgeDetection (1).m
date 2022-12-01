I = double((imread("3_gaussian.jpg")));
[Ni, Nj] = size(I);
figure(1), imagesc(I);
for i = 1: Ni-1
    for j = 1: Nj-1
        Gi(i, j) = I(i + 1, j) - I(i, j);
        Gj(i, j) = I(i, j + 1) - I(i, j);
    end
end

figure(2), imagesc(Gi)
figure(3), imagesc(Gj)

modG = sqrt((Gi.*Gi) + (Gj.*Gj));
avG=atan2(Gj,Gi);