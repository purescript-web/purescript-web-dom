export const length = (list) => () => list.length;

export function _item(list) {
  return function(index) {
    return function() {
      return list.item(index);
    };
  };
}

export function contains(list) {
  return function(token) {
    return function() {
      return list.contains(token);
    };
  };
}

export function add(list) {
  return function(token) {
    return function() {
      return list.add(token);
    };
  };
}

export function remove(list) {
  return function(token) {
    return function() {
      return list.remove(token);
    };
  };
}

export function toggle(list) {
  return function(token) {
    return function() {
      return list.toggle(token);
    };
  };
}

export function toggleForce(list) {
  return function(token) {
    return function(force) {
      return function() {
        return list.toggle(token, force);
      };
    };
  };
}

export function replace(list) {
  return function(token) {
    return function(newToken) {
      return function() {
        return list.replace(token, newToken);
      };
    };
  };
}

export function supports(list) {
  return function(token) {
    return function() {
      return list.supports(token);
    };
  };
}

export function getValue(list) {
  return function() {
    return list.value;
  };
}

export function setValue(list) {
  return function(token) {
    return function() {
      list.value = token;
    };
  };
}

export function tokens(list) {
  return function () {
    const result = [];
    for (const token of list.tokens) {
      result.push(token);
    }
    return result;
  };
}
