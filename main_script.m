#Thiscodeloadsthedataanddefinesmeasurementparameters.
load #inputyourStardata
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

#Task 1
lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)


#Task 2 & 7
s = spectra(:,2)


#Task 3
plot(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

#Task 4
[sHa,idx] = min(s)
lambdaHa = lambda(idx)

#Task 5
hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off


#Task 6
z = lambdaHa/656.28 - 1
speed = z*299792.458


#Task 8
[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

#Tasks 9-11
for v = 1:7
    s = spectra(:,v);

    if speed(v) <= 0
        plot(lambda,s,"--")
    else
        plot(lambda,s,"LineWidth",3) 
    end
    hold on
end
hold off


#Task 12
legend(starnames)


#Task 13
movaway = starnames(speed > 0) 
