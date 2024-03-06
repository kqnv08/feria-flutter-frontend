// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const saleListPage = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'saleListPage'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'saleCriteria')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'FilterCriteriaInfo'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'saleListPage'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'saleCriteria'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'saleCriteria')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'data'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
              name: _i1.NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            _i1.FieldNode(
              name: _i1.NameNode(value: 'total'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            _i1.FieldNode(
              name: _i1.NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            _i1.FieldNode(
              name: _i1.NameNode(value: 'createdAt'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'limit'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'page'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'totalPages'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'totalRecords'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    )
  ]),
);
const createSale = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'createSale'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'saleInputDto')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'NewSaleInputDto'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'createSale'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'saleInputDto'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'saleInputDto')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'success'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'successData'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  saleListPage,
  createSale,
]);
