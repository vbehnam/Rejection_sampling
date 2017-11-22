% Draw 10^5 samples of X ~ Unif(-1, 1)
X = -1 + (1+1)*rand(1, 10^5);

% Draw 10^5 samples of Y ~ Unif(0, 4.25)
Y = rand(1, 10^5)*4.25;

% make a null array of size 10^5
Accepted = nan(1, 10^5);

% set rejected to 0
rejected = 0;

for i=1:10^5
    
    % if we have gotten 1000 non-rejected samples from the box, stop the for loop
    if sum(~isnan(Accepted)) == 1000
        
        break
        
    else

        y_sample = Y(i);
        x_sample = X(i);
    
        % if y_sample is within the range specified, store the x value in accepted
        if (y_sample > 0) && (y_sample < calculateFunction(x_sample))
            Accepted(i) = x_sample;
            
        else
            rejected = rejected + 1;
        end
        
    end
    
end

% acceptance_ratio for those curious
acceptance_ratio = 1000/(rejected+1000)

% set the domain of g(x)
z = [-1:0.01:0,0.5:0.05:1];

% crazy sine function, g(x)
g = ((sin(z)).^2).*abs((z .^ 3)+(2*z)-3);

% scale the function (this is for comparing the histogram) by the scalar 100
f = 100*g;


% make a histogram of accepted with 15 bins
hist(Accepted, 15);

% this plots the histogram and the function together
hold on
plot(z,f)
hold off;

% the original function
function result = calculateFunction(x) 

    result = ((sin(x)).^2).*abs(x.^3+(2*x)-3);
    
end