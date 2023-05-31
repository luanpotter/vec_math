// generated by tools/generate_vecs

{{#repetitionsPerLength}}
typedef NVec{{key}}<T extends num> = ({{#value}}T,{{/value}});{{/repetitionsPerLength}}

{{#repetitionsPerLength}}
typedef Vec{{key}} = NVec{{key}}<double>;{{/repetitionsPerLength}}

{{#repetitionsPerLength}}
typedef IVec{{key}} = NVec{{key}}<int>;{{/repetitionsPerLength}}

{{#propertiesForLenghts}}
extension NVec{{key}}prperties<T extends num> on NVec{{key}}<T> {
{{#value}}
{{#getters}}
  T get {{name}} => ${{sequence}};
{{/getters}}
{{#properties}}
  NVec{{returnLength}}<T> get {{name}} => ({{#sequence}}${{.}},{{/sequence}});
{{/properties}}
{{/value}}
}
{{/propertiesForLenghts}}