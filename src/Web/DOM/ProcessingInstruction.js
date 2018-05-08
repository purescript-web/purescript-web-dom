"use strict";

exports.target = function (pi) {
  return function () {
    return pi.target;
  };
};
