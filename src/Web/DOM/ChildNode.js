"use strict";

export function remove(node) {
  return function () {
    return node.remove();
  };
}
