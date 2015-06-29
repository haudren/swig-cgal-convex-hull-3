%module CGAL_Convex_hull_3

%include "SWIG_CGAL/common.i"
Decl_void_type()

%import "SWIG_CGAL/Common/Macros.h"
%import "SWIG_CGAL/Kernel/CGAL_Kernel.i"

%include "SWIG_CGAL/Common/Iterator.h"

SWIG_CGAL_add_java_loadLibrary(CGAL_Convex_hull_3)

%import "SWIG_CGAL/Polyhedron_3/CGAL_Polyhedron_3.i"

%{
        #include <SWIG_CGAL/Polyhedron_3/all_includes.h>
        #include <SWIG_CGAL/Kernel/Point_3.h>
        #include <SWIG_CGAL/Common/Wrapper_iterator_helper.h>
        #include <CGAL/convex_hull_3.h>
%}

%types(Point_3*,Point_3);
SWIG_CGAL_set_wrapper_iterator_helper_input(Point_3)
SWIG_CGAL_set_wrapper_iterator_helper_output(Point_3)

SWIG_CGAL_import_Polyhedron_3_SWIG_wrapper

%pragma(java) jniclassimports=%{import CGAL.Polyhedron_3.Polyhedron_3;%}
%pragma(java) moduleimports  =%{import CGAL.Polyhedron_3.Polyhedron_3;%}

%inline
%{
        typedef Wrapper_iterator_helper<Point_3>::input    Point_range;
        void convex_hull_3(Point_range range, Polyhedron_3_SWIG_wrapper& polyhedron){
                CGAL::convex_hull_3(SWIG_CGAL::get_begin(range),
                                    SWIG_CGAL::get_end(range),
                                    polyhedron.get_data());
        }
%}
