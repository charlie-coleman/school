#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <vector>

#include "Connect4State.h"

PYBIND11_MODULE(Connect4, m) {
  pybind11::class_<Connect4State>(m, "Connect4State")
      .def(pybind11::init<>())
      .def("getRed", &Connect4State::getRed)
      .def("getYellow", &Connect4State::getYellow)
      .def("getTurn", &Connect4State::getTurn)
      .def("winner", &Connect4State::winner)
      .def("actions", &Connect4State::actions)
      .def("apply", &Connect4State::apply)
      .def("result", &Connect4State::result)
      .def("gameOver", &Connect4State::gameOver)
      .def("getState", &Connect4State::getState)
      .def("display", &Connect4State::display);
}
