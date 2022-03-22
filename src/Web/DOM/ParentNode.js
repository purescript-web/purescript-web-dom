"use strict";

var getEffProp = function (name) {
  return function (node) {
    return function () {
      return node[name];
    };
  };
};

export var children = getEffProp("children");
export var _firstElementChild = getEffProp("firstElementChild");
export var _lastElementChild = getEffProp("lastElementChild");
export var childElementCount = getEffProp("childElementCount");

export function _querySelector(selector) {
  return function (node) {
    return function () {
      return node.querySelector(selector);
    };
  };
}

export function querySelectorAll(selector) {
  return function (node) {
    return function () {
      return node.querySelectorAll(selector);
    };
  };
}
