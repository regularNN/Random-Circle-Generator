function [xy] = Random_Circle_generator(R, square_edge, iter_max=1050)

% This function generate N random cirlces (R = [r1,r2, ..) in
% the 2D place inside a square of edge length square_edge

% R           : Vector of radii of circles.
% square_edge : edge length of the surrounding square

[x, y] = size(R);
if x == 1
  R = R';
  x=y;
end
squareSide = square_edge - 2*R(1);
xy = rand([1,2]) * (squareSide) - squareSide/2;
   
time_flag = 0
if length(R)>1
  for i = [2:x]
      fails = 0;     % to avoid looping forever
      squareSide = square_edge - 2*R(i);
      % generate new point and test distance
      while 1
        pt = rand([1,2]) * (squareSide) - squareSide/2;
        % check whether it overlaps other generated circles
        if not (sum(eucl_dist(xy, pt) < R(i)+R(1:i-1)))
            xy = [xy; pt];  % add it
            fails = 0;      % reset failure counter
        else
            % increase failure counter,
            fails = fails + 1;
            % give up if exceeded some threshold
            if fails > iter_max
                disp('this is taking too long...');
                time_flag = 1
                break
            end
        end
      end
      if time_flag
        break
      end
  end
  if time_flag
        break
  end
end



% plot
%h=figure;
%plot(xy(:,1), xy(:,2), 'x'), hold on
%for i=1:size(xy,1)
%    circle3(xy(i,1), xy(i,2), R[i]);
%end
%print(h, 'filename12.jpg', '-djpeg', '-r300');
%hold off