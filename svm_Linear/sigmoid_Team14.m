
function g = sigmoid_Team14(z)

g = zeros(size(z));

g = 1 ./ ( 1 + exp( -1 * z ));
 
end