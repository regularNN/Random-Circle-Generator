function dst = eucl_dist(xy, pt)
    n = size(xy,1);
    dst = zeros(n,1);
    for i=1:n
        dst(i,1) = sqrt((xy(i,1) - pt(1,1))^2 + (xy(i,2) - pt(1,2))^2) ;
    end
end
    