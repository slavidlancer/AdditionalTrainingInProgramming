% Examples and demonstrations.
%
%   Type 'demo' at the command line to browse more demos of
%   MATLAB, the Toolboxes, and SIMULINK.
%
%
% MATLAB/Introduction.
%   demo        - Browse demos for MATLAB, Toolboxes, and SIMULINK
%
% MATLAB/Matrices.
%   intro       - Introduction to basic matrix operations in MATLAB.
%   inverter    - Demonstrate the inversion of a matrix.
%   buckydem    - Connectivity graph of the Buckminster Fuller geodesic dome.
%   sparsity    - Demonstrate effect of sparsity orderings.
%   matmanip    - Introduction to matrix manipulation.
%   eigmovie    - Symmetric eigenvalue movie.
%   rrefmovie   - Computation of Reduced Row Echelon Form.
%   delsqdemo   - Finite difference Laplacian on various domains.
%   sepdemo     - Separators for a finite element mesh.
%   airfoil     - Display sparse matrix from NASA airfoil.
%   eigshow     - Graphical demonstration of matrix eigenvalues.
%   svdshow     - Graphical demonstration of matrix singular values.
%
% MATLAB/Numerics.
%   funfuns     - Demonstrate functions that operate on other functions.
%   fitdemo     - Nonlinear curve fit with simplex algorithm.
%   sunspots    - FFT: the answer is 11.08, what is the question?
%   e2pi        - 2D visual solutions: Which is greater, e^pi or pi^e?
%   bench       - MATLAB Benchmark.
%   fftdemo     - Use of the fast finite Fourier transform.
%   census      - Try to predict the US population in the year 2000.
%   spline2d    - Demonstrate GINPUT and SPLINE in two dimensions.
%   lotkademo   - An example of ordinary differential equation solution.
%   quaddemo    - Adaptive quadrature.
%   zerodemo    - Zerofinding with fzero.
%   fplotdemo   - Plot a function.
%   quake       - Loma Prieta Earthquake.
%
% MATLAB/Visualization.
%   graf2d      - 2D Plots: Demonstrate XY plots in MATLAB.
%   graf2d2     - 3D Plots: Demonstrate XYZ plots in MATLAB.
%   grafcplx    - Demonstrate complex function plots in MATLAB.
%   lorenz      - Plot the orbit around the Lorenz chaotic attractor.
%   imageext    - Image colormaps: changing and rotating colormaps.
%   xpklein     - Klein bottle demo.
%   vibes       - Vibration movie: Vibrating L-shaped membrane.
%   xpsound     - Visualizing sound: Demonstrate MATLAB's sound capability.
%   imagedemo   - Demonstrate MATLAB's image capability.
%   penny       - Several views of the penny data.
%   earthmap    - View Earth's topography.
%   xfourier    - Graphic demo of Fourier series expansion.
%   colormenu   - Select color map.
%   cplxdemo    - Maps of functions of a complex variable.
%
% MATLAB/Language.
%   xplang      - Introduction to the MATLAB language.
%   hndlgraf    - Demonstrate Handle Graphics for line plots.
%   graf3d      - Demonstrate Handle Graphics for surface plots.
%   hndlaxis    - Demonstrate Handle Graphics for axes.
%
% MATLAB/ODE Suite.
%   odedemo     - Demo for the ODE suite integrators.
%   a2ode       - Stiff problem, linear with real eigenvalues (A2 of EHL).
%   a3ode       - Stiff problem, linear with real eigenvalues (A3 of EHL).
%   b5ode       - Stiff problem, linear with complex eigenvalues (B5 of EHL).
%   ballode     - Equations of motion for a bouncing ball used by BALLDEMO.
%   besslode    - Bessel's equation of order 0 used by BESSLDEMO.
%   brussode    - Stiff problem modelling a chemical reaction (Brusselator).
%   buiode      - Stiff problem with analytical solution due to Bui.
%   chm6ode     - Stiff problem CHM6 from Enright and Hull.
%   chm7ode     - Stiff problem CHM7 from Enright and Hull.
%   chm9ode     - Stiff problem CHM9 from Enright and Hull.
%   d1ode       - Stiff problem, nonlinear with real eigenvalues (D1 of EHL).
%   fem1ode     - Stiff problem with a time-dependent mass matrix.
%   fem2ode     - Stiff problem with a time-independent mass matrix.
%   gearode     - Stiff problem due to Gear as quoted by van der Houwen.
%   hb1ode      - Stiff problem 1 of Hindmarsh and Byrne.
%   hb2ode      - Stiff problem 2 of Hindmarsh and Byrne.
%   hb3ode      - Stiff problem 3 of Hindmarsh and Byrne.
%   orbitode    - Restricted 3 body problem used by ORBITDEMO.
%   orbt2ode    - Non-stiff problem D5 of Hull et al.
%   rigidode    - Euler equations of a rigid body without external forces.
%   sticode     - A spring-driven mass stuck to surface, used by STICDEMO.
%   vdpode      - Parameterizable van der Pol equation (stiff for large mu).
%
% Extras/Gallery.
%   knot        - Tube surrounding a three-dimensional knot.
%   quivdemo    - Demonstrate the quiver function.
%   klein1      - Construct a Klein bottle.
%   cruller     - Construct cruller.
%   tori4       - Hoops: Construct four linked tori.
%   spharm2     - Construct spherical surface harmonic.
%   modes       - Plot 12 modes of the L-shaped membrane.
%   logo        - Display the MATLAB L-shaped membrane logo.
%
% Extras/Games.
%   fifteen     - Sliding puzzle.
%   xpbombs     - Minesweeper game.
%   life        - Conway's Game of Life.
%   soma        - Soma cube.
%
% Extras/Miscellaneous.
%   truss       - Animation of a bending bridge truss.
%   travel      - Traveling salesman problem.
%   spinner     - Colorful lines spinning through space.
%   xpquad      - Superquadrics plotting demonstration.
%   codec       - Alphabet transposition coder/decoder.
%   xphide      - Visual perception of objects in motion.
%   makevase    - Generate and plot a surface of revolution.
%   wrldtrv     - Great circle flight routes around the globe.
%   logospin    - Movie of The MathWorks' logo spinning.
%   crulspin    - Spinning cruller movie.
%   quatdemo    - Quaternion rotation.
%
% General Demo/Helper functions.
%   cmdlnwin    - An Demo gateway routine for playing command line demos.
%   cmdlnbgn    - Set up for command line demos.
%   cmdlnend    - clean up after command line demos.
%   finddemo    - Finds demos available for individual toolboxes.
%   helpfun     - Utility function for displaying help text conveniently.
%   pltmat      - Display a matrix in a figure window.
%
% MATLAB/Helper functions.
%   bucky       - The graph of the Buckminster Fuller geodesic dome.
%   peaks       - A sample function of two variables.
%   membrane    - Generate MathWorks' logo.
%
%
% See also SIMDEMOS


%   Copyright (c) 1984-98 by The MathWorks, Inc.
%   $Revision: 5.13 $  $Date: 1998/08/27 15:59:10 $ 
