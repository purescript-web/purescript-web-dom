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

export function contains(list) {
  return function(token) {
    return function() {
      return list.contains(token);
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

export function _item(list) {
  return function(index) {
    return function() {
      return list.item(index);
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
};

export function supports(list) {
  return function(token) {
    return function() {
      return list.supports(token);
    };
  };
};

export function tokens(domTokenList) {
  return function () {
    var tokens = [];
    var tokens_length = domTokenList.length;

    for (var i = 0; i < tokens_length; i++) {
      tokens.push(domTokenList.item(i));
    }

    return tokens;
  };
};

export function setValue(list) {
  return function(token) {
    return function() {
      return list.setValue(token);
    };
  };
};

export function getValue(list) {
  return function() {
    return list.getValue();
  };
};
