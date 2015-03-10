User.create!(name:  "Admin",
             email: "admin@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)
=begin
User.create!(name:  "Second User",
             email: "second@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             activated: true,
             activated_at: Time.zone.now)

Article.create!(title: "Lorem ipsum dolor sit amet",
                body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam sapiente rerum, dolorum eos delectus. Nihil eaque minima tempore? Maxime reiciendis illum cum veniam ipsa autem possimus ea quisquam, voluptates sed eum perferendis laborum accusamus at adipisci. Ex officia, excepturi aspernatur dolorem eos? Eligendi voluptatum adipisci alias vel error modi, ipsum repellendus. Eveniet laboriosam officia necessitatibus temporibus est facere dolorem, iure minus labore. Enim repellendus dolorem dicta dolore neque numquam nobis optio sunt, quisquam commodi. Assumenda sunt dolorem minima, accusantium dolor id corporis perferendis animi tempora, soluta molestiae, beatae tempore fuga omnis sapiente neque voluptatibus quos recusandae possimus. Fugit amet earum eveniet expedita sequi, excepturi totam recusandae, maxime minus voluptatum iste quibusdam dolor consequatur sed molestias perspiciatis, perferendis impedit nulla! Ratione ad, in sed natus voluptas labore rem id voluptate tempora aliquid eum minima qui recusandae excepturi esse, inventore saepe doloribus suscipit incidunt fugiat facere, totam ex! Velit deserunt inventore vel tempore praesentium, ipsa, dolores doloremque rerum commodi aperiam, aliquid. Vitae doloribus eligendi impedit, ducimus temporibus quaerat, consequatur alias cupiditate rerum repudiandae reiciendis. Facere quam error dolores molestiae voluptatum nesciunt! Possimus ut similique quidem dolore a facilis cum veniam quisquam repellendus, quis, omnis cupiditate, minima! Tempore dolores non natus vitae mollitia, amet voluptas quae minima numquam esse neque magnam accusantium, quis, odio voluptates omnis illo sint deleniti enim inventore. Eum quo repudiandae voluptas tempora natus, dolore saepe assumenda quaerat. Error dignissimos magnam totam id quod nobis necessitatibus cupiditate reprehenderit minus, aliquam. Ipsam laborum, rerum similique debitis illum excepturi facilis quis nisi dicta non obcaecati beatae, tempora laudantium maxime optio vitae blanditiis atque consectetur doloremque ad pariatur facere aut nulla, et consequuntur. Omnis ullam adipisci pariatur perspiciatis laudantium mollitia praesentium consequuntur nesciunt iure debitis delectus eveniet accusamus sed aliquid quasi eum in dignissimos sint exercitationem, inventore, eos temporibus commodi expedita id. Molestiae impedit repellendus nobis dolore, molestias temporibus ea, error labore, tenetur accusantium laborum facere. Ipsa et eaque nihil incidunt beatae minus voluptatum modi, repudiandae quia molestiae sed necessitatibus animi nulla, eligendi, ab at quasi consequatur quisquam voluptatibus autem fuga expedita inventore doloremque molestias? Modi dolorem voluptatem magni, aut aspernatur blanditiis explicabo fuga. Eos explicabo eius similique voluptatem sunt magni necessitatibus repudiandae, fuga consequuntur consequatur est minus quos voluptate earum cupiditate laboriosam nisi, soluta tenetur excepturi, praesentium. Quod soluta quasi asperiores omnis cupiditate ipsa voluptas culpa aspernatur perferendis, molestiae magni voluptatibus, adipisci doloribus enim laboriosam aut vitae voluptates rerum iusto modi harum ullam magnam odit explicabo obcaecati. Distinctio saepe illum atque iure maiores architecto aut quibusdam, veritatis. Cumque neque, aspernatur delectus, quos odio vel. Maiores ex laboriosam sunt! Quasi error, labore reiciendis vitae repellat modi adipisci nobis. Laborum expedita, sint maiores omnis? Maiores perferendis sunt non blanditiis beatae dicta fuga molestias maxime tempore, quod in hic possimus. Quasi cumque sint magni dolores vitae expedita illo, eos iusto excepturi, pariatur, delectus iste officia. Dolore maiores laudantium, ipsam recusandae, odit consequuntur, molestias, reprehenderit architecto eveniet perferendis inventore alias voluptas. Dignissimos mollitia rem modi reiciendis commodi. Cupiditate rerum nisi, debitis quisquam commodi! Commodi, ipsa saepe?", 
                user_id: 1)

Article.create!(title: "Adipisci quaerat sapiente eos id",
                body: "Tempore dolores non natus vitae mollitia, amet voluptas quae minima numquam esse neque magnam accusantium, quis, odio voluptates omnis illo sint deleniti enim inventore. Eum quo repudiandae voluptas tempora natus, dolore saepe assumenda quaerat. Error dignissimos magnam totam id quod nobis necessitatibus cupiditate reprehenderit minus, aliquam. Ipsam laborum, rerum similique debitis illum excepturi facilis quis nisi dicta non obcaecati beatae, tempora laudantium maxime optio vitae blanditiis atque consectetur doloremque ad pariatur facere aut nulla, et consequuntur. Omnis ullam adipisci pariatur perspiciatis laudantium mollitia praesentium consequuntur nesciunt iure debitis delectus eveniet accusamus sed aliquid quasi eum in dignissimos sint exercitationem, inventore, eos temporibus commodi expedita id. Molestiae impedit repellendus nobis dolore, molestias temporibus ea, error labore, tenetur accusantium laborum facere. Ipsa et eaque nihil incidunt beatae minus voluptatum modi, repudiandae quia molestiae sed necessitatibus animi nulla, eligendi, ab at quasi consequatur quisquam voluptatibus autem fuga expedita inventore doloremque molestias? Modi dolorem voluptatem magni, aut aspernatur blanditiis explicabo fuga. Eos explicabo eius similique voluptatem sunt magni necessitatibus repudiandae, fuga consequuntur consequatur est minus quos voluptate earum cupiditate laboriosam nisi, soluta tenetur excepturi, praesentium. Quod soluta quasi asperiores omnis cupiditate ipsa voluptas culpa aspernatur perferendis, molestiae magni voluptatibus, adipisci doloribus enim laboriosam aut vitae voluptates rerum iusto modi harum ullam magnam odit explicabo obcaecati", 
                user_id: 1)

Article.create!(title: "Neque eum at quod obcaecati",
                body: "Omnis ullam adipisci pariatur perspiciatis laudantium mollitia praesentium consequuntur nesciunt iure debitis delectus eveniet accusamus sed aliquid quasi eum in dignissimos sint exercitationem, inventore, eos temporibus commodi expedita id. Molestiae impedit repellendus nobis dolore, molestias temporibus ea, error labore, tenetur accusantium laborum facere. Ipsa et eaque nihil incidunt beatae minus voluptatum modi, repudiandae quia molestiae sed necessitatibus animi nulla, eligendi, ab at quasi consequatur quisquam voluptatibus autem fuga expedita inventore doloremque molestias? Modi dolorem voluptatem magni, aut aspernatur blanditiis explicabo fuga. Eos explicabo eius similique voluptatem sunt magni necessitatibus repudiandae, fuga consequuntur consequatur est minus quos voluptate earum cupiditate laboriosam nisi, soluta tenetur excepturi, praesentium. Quod soluta quasi asperiores omnis cupiditate ipsa voluptas culpa aspernatur perferendis, molestiae magni voluptatibus, adipisci doloribus enim laboriosam aut vitae voluptates rerum iusto modi harum ullam magnam odit explicabo obcaecati. Distinctio saepe illum atque iure maiores architecto aut quibusdam, veritatis. Cumque neque, aspernatur delectus, quos odio vel. Maiores ex laboriosam sunt! Quasi error, labore reiciendis vitae repellat modi adipisci nobis. Laborum expedita, sint maiores omnis? Maiores perferendis sunt non blanditiis beatae dicta fuga molestias maxime tempore, quod in hic possimus. Quasi cumque sint magni dolores vitae expedita illo, eos iusto excepturi, pariatur, delectus iste officia. Dolore maiores laudantium, ipsam recusandae, odit consequuntur, molestias, reprehenderit architecto eveniet perferendis inventore alias voluptas. Dignissimos mollitia rem modi reiciendis commodi. Cupiditate rerum nisi, debitis quisquam commodi! Commodi, ipsa saepe?",
                user_id: 1)

Article.create!(title: "Autem quasi molestiae commodi ipsa?",
                body: "Enim repellendus dolorem dicta dolore neque numquam nobis optio sunt, quisquam commodi. Assumenda sunt dolorem minima, accusantium dolor id corporis perferendis animi tempora, soluta molestiae, beatae tempore fuga omnis sapiente neque voluptatibus quos recusandae possimus. Fugit amet earum eveniet expedita sequi, excepturi totam recusandae, maxime minus voluptatum iste quibusdam dolor consequatur sed molestias perspiciatis, perferendis impedit nulla! Ratione ad, in sed natus voluptas labore rem id voluptate tempora aliquid eum minima qui recusandae excepturi esse, inventore saepe doloribus suscipit incidunt fugiat facere, totam ex! Velit deserunt inventore vel tempore praesentium, ipsa, dolores doloremque rerum commodi aperiam, aliquid. Vitae doloribus eligendi impedit, ducimus temporibus quaerat, consequatur alias cupiditate rerum repudiandae reiciendis. Facere quam error dolores molestiae voluptatum nesciunt! Possimus ut similique quidem dolore a facilis cum veniam quisquam repellendus, quis, omnis cupiditate, minima! Tempore dolores non natus vitae mollitia, amet voluptas quae minima numquam esse neque magnam accusantium, quis, odio voluptates omnis illo sint deleniti enim inventore. Eum quo repudiandae voluptas tempora natus, dolore saepe assumenda quaerat.",
                user_id: 1)

Article.create!(title: "Voluptatibus quos quas voluptatum veritatis!",
                body: "Ex officia, excepturi aspernatur dolorem eos? Eligendi voluptatum adipisci alias vel error modi, ipsum repellendus. Eveniet laboriosam officia necessitatibus temporibus est facere dolorem, iure minus labore. Enim repellendus dolorem dicta dolore neque numquam nobis optio sunt, quisquam commodi. Assumenda sunt dolorem minima, accusantium dolor id corporis perferendis animi tempora, soluta molestiae, beatae tempore fuga omnis sapiente neque voluptatibus quos recusandae possimus. Fugit amet earum eveniet expedita sequi, excepturi totam recusandae, maxime minus voluptatum iste quibusdam dolor consequatur sed molestias perspiciatis, perferendis impedit nulla! Ratione ad, in sed natus voluptas labore rem id voluptate tempora aliquid eum minima qui recusandae excepturi esse, inventore saepe doloribus suscipit incidunt fugiat facere, totam ex! Velit deserunt inventore vel tempore praesentium, ipsa, dolores doloremque rerum commodi aperiam, aliquid. Vitae doloribus eligendi impedit, ducimus temporibus quaerat, consequatur alias cupiditate rerum repudiandae reiciendis. Facere quam error dolores molestiae voluptatum nesciunt! Possimus ut similique quidem dolore a facilis cum veniam quisquam repellendus, quis, omnis cupiditate, minima! Tempore dolores non natus vitae mollitia, amet voluptas quae minima numquam esse neque magnam accusantium, quis, odio voluptates omnis illo sint deleniti enim inventore. Eum quo repudiandae voluptas tempora natus, dolore saepe assumenda quaerat. Error dignissimos magnam totam id quod nobis necessitatibus cupiditate reprehenderit minus, aliquam. Ipsam laborum, rerum similique debitis illum excepturi facilis quis nisi dicta non obcaecati beatae, tempora laudantium maxime optio vitae blanditiis atque consectetur doloremque ad pariatur facere aut nulla, et consequuntur. Omnis ullam adipisci pariatur perspiciatis laudantium mollitia praesentium consequuntur nesciunt iure debitis delectus eveniet accusamus sed aliquid quasi eum in dignissimos sint exercitationem, inventore, eos temporibus commodi expedita id. Molestiae impedit repellendus nobis dolore, molestias temporibus ea, error labore, tenetur accusantium laborum facere. Ipsa et eaque nihil incidunt beatae minus voluptatum modi, repudiandae quia molestiae sed necessitatibus animi nulla, eligendi, ab at quasi consequatur quisquam voluptatibus autem fuga expedita inventore doloremque molestias? Modi dolorem voluptatem magni, aut aspernatur blanditiis explicabo fuga. Eos explicabo eius similique voluptatem sunt magni necessitatibus repudiandae, fuga consequuntur consequatur est minus quos voluptate earum cupiditate laboriosam nisi, soluta tenetur excepturi, praesentium. Quod soluta quasi asperiores omnis cupiditate ipsa voluptas culpa aspernatur perferendis, molestiae magni voluptatibus, adipisci doloribus enim laboriosam aut vitae voluptates rerum iusto modi harum ullam magnam odit explicabo obcaecati.",
                user_id: 1)
=end