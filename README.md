# Unexpected Behavior with Nullable Field and Null-Aware Operator in Getter

This code demonstrates an uncommon Dart bug related to unexpected behavior when accessing a nullable field using the null-aware operator (`??`) within a getter.

The `MyClass` class has a nullable integer field (`_value`). The `value` getter uses the null-aware operator to return 0 if `_value` is null.  While this might seem like a convenient default, it can lead to unexpected behavior if the default value (0) isn't appropriate in all scenarios.

The `main` function illustrates this behavior. `obj1` is initialized with a value, while `obj2` is initialized with null. Both prints correctly, but this might not be the intended behavior if we rely on the value being null in certain cases.

The solution shows a safer approach by either using a different default value that better fits the context or by explicitly handling the null case.
