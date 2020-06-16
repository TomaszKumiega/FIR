function [y]=to_q15(coeffs)

y=coeffs.*32768;
y=round(y);
end
