<template>
  <div class="col-md-10 col-md-offset-1">
      <div class="panel panel-default">
          <div class="panel-heading">
              <table>
                <tr>
                  <th><font size="7"> TRAVELA</font></th>
                  <th >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                  <td class="tg-yw4l">Maecenas ipsum velit, consectetuer eu, lobortis ut, dictum at, dui. In rutrum. Sed ac Maecenas ipsum velit, consectetuer eu, lo</td>
                </tr>
              </table>
          </div>
          <div class="panel-body">
               <div class="col-md-5 col-md-offset-1">
                  <div class="panel panel-default">

                      <div class="panel-body">
                          <div>
                              <h1>Create your next Travel</h1>
                                <ul v-if="errors1.length !== 0" class="alert alert-warning">
                                  <li v-for="(value, key) in errors1">
                                    <strong>{{key}}:</strong>
                                    <div v-for= "err in value">{{err}}</div>
                                  </li>
                                </ul>

                              <form @submit.prevent="add({name, phone, dateFrom, dateTo, origin, destination, numberp})">

                                <div class="form-group">
                                   <label for="name">Name:</label>
                                   <input type="text" class="form-control" id="name" placeholder="Name" v-model="name">
                                </div>
                                <div class="form-group">
                                   <label for="phone">Phone:</label>
                                   <input type="text" class="form-control" id="phone" placeholder="phone" v-model="phone">
                                </div>
                                <div class="form-group">
                                   <label for="datefrom">date from:</label>
                                   <input type="date" class="form-control" id="daterom" placeholder="data from" v-model="dateFrom">
                                </div>
                                <div class="form-group">
                                   <label for="dateto">date to:</label>
                                   <input type="date" class="form-control" id="dateto" placeholder="date to" v-model="dateTo">
                                </div>
                                <div class="form-group">
                                   <label for="origin">Origin:</label>
                                   <input type="text" class="form-control" id="origin" placeholder="Origin" v-model="origin">
                                </div>
                                <div class="form-group">
                                   <label for="destination">destination:</label>
                                   <input type="text" class="form-control" id="destination" placeholder="destination" v-model="destination">
                                </div>
                                <div class="form-group">
                                   <label for="numnerp">number people:</label>
                                   <input type="number" class="form-control" id="numberp" v-model="numberp">
                                </div>

                                <button type="submit" class="btn btn-primary">Submit</button>
                              </form>

                            </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-5 col-md-offset-0">
                  <div class="panel panel-default">
                      <div class="panel-heading">
                          About Travel A
                      </div>
                      <div class="panel-body">
                        <p class="text-xs-center">.

                          Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <div class="panel panel-default">
          <div class="panel-heading">
              Travel A - All Rights Reserved.<span class="pull-right">contact@travela.com | +55 (35) 3621 4551</span>
          </div>
      </div>
  </div>
</template>
<script>

import {mapState, mapActions} from 'vuex'

export default {
  data () {
    return {
      name: '',
      phone: '',
      dateFrom: '',
      dateTo: '',
      origin: '',
      destination: '',
      numberp: ''
    }
  },
  computed: {
    ...mapState({
      sucess: state => state.sucess,
      errors1: state => state.errors
    })
  },
  methods: {
    ...mapActions([
      'add'
    ])
  }
}
</script>
