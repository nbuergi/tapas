function [u, dt] = tapas_mpdcm_fmri_init_u(U, dcm)
%% 
%
% Input
%   U       Structure with experimental input u.
%   dcm     Structure with dcm. Optional.
%
% Output
%   u       Structure with mpdcm compatible input u.
%

% aponteeduardo@gmail.com
% copyright (C) 2016
%

n = 2;
if nargin < n
    dcm = struct();
end

U.u = full(U.u);

%if dcm.options.detrend_u
%    fprintf(1, 'Detrend U\n');
%    U.u = spm_detrend(U.u);
%end

%if dcm.options.smooth_u
%    for i = 1:numel(size(U.u, 2));
%        U.u(:, i) = smooth(U.u(:, i), 50, 'moving');
%    end
%end

if ~isfield(U, 'dt')
    U.dt = 1;
end

u = full(U.u');
dt = U.dt;

end


