% Generate three random variables from uniform distributions
X = rand(1, 10^5) + 1;
Y = rand(1, 10^5);
Z = rand(1, 10^5) * 4.03;

AcceptedX = nan(1, 10^5);
AcceptedY = nan(1, 10^5);

for i=1:10^5
   
    % if we have a 1000 samples, break the for loop
    if sum(~isnan(AcceptedX)) == 1000
       
        break
       
    else
   
        x_sample = X(i);
        y_sample = Y(i);
        z_sample = Z(i);
        
        % calculate the upper bound at x and y sampled. if z is greater
        % than this, reject
        function_result = calculateFunction(x_sample, y_sample);
   
        if (z_sample > 1/3.67) && (z_sample < function_result) 
            AcceptedX(i) = x_sample;
            AcceptedY(i) = y_sample;
        end
    end
       
end

% plot the non-rejected vectors(Xi, Yi)
scatter(AcceptedX, AcceptedY);

function blah = calculateFunction(x, y) 

    blah = (x*(exp(x*y)))/3.67;
    
end
