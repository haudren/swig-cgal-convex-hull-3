inline void modify_polyhedron(Polyhedron_3_SWIG_wrapper& polyhedron){
        polyhedron.make_tetrahedron(Point_3::cpp_base(0,0,0),
                                    Point_3::cpp_base(0,0,1),
                                    Point_3::cpp_base(0,1,0),
                                    Point_3::cpp_base(1,1,1));
}
