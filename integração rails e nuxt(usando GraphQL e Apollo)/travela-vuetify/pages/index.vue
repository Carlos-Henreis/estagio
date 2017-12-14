<template>
  <v-container>
    <v-toolbar light>
      <v-toolbar-title><h1>TRAVELA</h1></v-toolbar-title>
      <v-spacer></v-spacer>
      <p class="mt-1">Maecenas ipsum velit, consectetuer eu,ut, dictum at, dui. In rutrum. lobortis ut, dictum at, dui. In rutrum. Sed ac Maecenas ipsum velit, consectetuer eu, lo</p>
    </v-toolbar>
    <v-layout row wrap>
      <v-flex xs6>
        <v-card light class="px-4">
          <v-card-title primary-title>
            <h2 class="headline mb-0 text-xs-center">Create your next Travel</h2>
          </v-card-title>

          <div v-if="errors1.length !== 0">
            <v-alert outline color="error" :value="true">
              <li v-for="(value, key) in errors1">
                <strong>{{key}}:</strong>
                <div v-for= "err in value">{{err}}</div>
              </li>
            </v-alert>
          </div>

          <v-form ref="form" @submit.prevent>
              <v-text-field
                label="Name"
                v-model="name"
              ></v-text-field>
              <v-text-field
                label="Phone"
                v-model="phone"
              ></v-text-field>
              <v-menu
                lazy
                :close-on-content-click="true"
                transition="scale-transition"
                offset-y
                full-width
                :nudge-right="40"
                max-width="290px"
                min-width="290px"
              >
                <v-text-field
                  slot="activator"
                  label="Date From"
                  v-model="dateFrom"
                ></v-text-field>
                <v-date-picker @input="dateFrom = $event" no-title scrollable actions>
                </v-date-picker>
              </v-menu>
              <v-menu
                lazy
                :close-on-content-click="true"
                transition="scale-transition"
                offset-y
                full-width
                :nudge-right="40"
                max-width="290px"
                min-width="290px"
              >
                <v-text-field
                  slot="activator"
                  label="Date To"
                  v-model="dateTo"
                ></v-text-field>
                <v-date-picker @input="dateTo = $event" no-title scrollable actions>
                </v-date-picker>
              </v-menu>
              <v-text-field
                label="Origin"
                v-model="origin"
              ></v-text-field>
              <v-text-field
                label="Destination"
                v-model="destination"
              ></v-text-field>
              <v-text-field
                type='number'
                label="Number People"
                v-model="numberp"
              ></v-text-field>
              <v-btn
                @click="add({name, phone, dateFrom, dateTo, origin, destination, numberp})"
              >
                submit
              </v-btn>
            </v-form>
        </v-card>
      </v-flex>
      <v-flex xs6>
        <v-card light class="px-4">
          <v-card-title primary-title>
            <div>
              <h2 class="headline mb-0 text-xs-center">About TravelA</h2>
            </div>
          </v-card-title>
          <v-card-media>
            <p class="text-xs-justify">
              Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel
            </p>
          </v-card-media>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>

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
