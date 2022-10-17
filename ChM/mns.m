function [y, i, resvec] = mns(A, b, tol, maxit) try
chol(A); catch exeption
if isequal(exeption.identifier, 'MATLAB:posdef') 
    throw(MException(exeption.identifier,'??????? ?? ???????? ???????????? ????????????')); end
end
if nargin < 4, maxit = 1e5; end 
if nargin < 3, tol = 1e-10; end
if nargout > 2, resvec = zeros(maxit, 1); end

resvec = zeros(maxit, 1); % ?????? ???? ???????
y = b./diag(A); r = A*y - b; 
for i = 1:maxit
    p = A*r;
    tau = (p'*r)/(p'*p); y = y - tau*r;
    r = r - tau*p;
    if nargout > 2, resvec(i) = norm(r, Inf);end 
    if norm(r, Inf) < tol, break; end
end

if nargout > 2, resvec = resvec(1:i); end 
end


