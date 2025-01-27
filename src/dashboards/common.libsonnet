// General commons

{
  fields: {
    actor_account_name: 'actor.account.name.keyword',
    course: 'object.definition.extensions.http://adlnet.gov/expapi/activities/course.keyword',
    school: 'object.definition.extensions.https://w3id.org/xapi/acrossx/extensions/school.keyword',
    session: 'object.definition.extensions.http://adlnet.gov/expapi/activities/module.keyword',
  },
  metrics: {
    count: { id: '1', type: 'count' },
    cardinality(field):: {
      id: '1',
      type: 'cardinality',
      field: field,
    },
    max(field):: {
      id: '1',
      type: 'max',
      field: field,
    },
  },
  objects: {
    date_histogram(interval='auto', min_doc_count='1'):: {
      id: 'date',
      field: 'timestamp',
      type: 'date_histogram',
      settings: {
        interval: interval,
        min_doc_count: min_doc_count,
        trimEdges: '0',
      },
    },
  },
  tags: {
    staff: 'staff',
    teacher: 'teacher',
    video: 'video',
    xapi: 'xAPI',
  },
  utils: {
    double_escape_string(x):: std.strReplace(std.strReplace(x, ':', '\\\\:'), '/', '\\\\/'),
    single_escape_string(x):: std.strReplace(std.strReplace(x, ':', '\\:'), '/', '\\/'),
  },
  verb_ids: {
    completed: 'http://adlnet.gov/expapi/verbs/completed',
    initialized: 'http://adlnet.gov/expapi/verbs/initialized',
    played: 'https://w3id.org/xapi/video/verbs/played',
  },
}
