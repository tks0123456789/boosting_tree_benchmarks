num_rows = 473134 * 0.75

def convert(input_filename, out_data_filename, out_query_filename, out_query_filename2):
	input = open(input_filename,"r")
	output_feature = open(out_data_filename,"w")
	output_query = open(out_query_filename,"w")
	output_query2 = open(out_query_filename2,"w")
	cur_cnt = 0
	cur_doc_cnt = 0
	last_qid = -1
        row_counter = 0
	while True:
		line = input.readline()
                if row_counter >= num_rows:
                    break
                row_counter = row_counter + 1

		if not line:
			break
		tokens = line.split(' ')
		tokens[-1] = tokens[-1].strip()
		label = tokens[0]
		qid = int(tokens[1].split(':')[1])
		if qid != last_qid:
			if cur_doc_cnt > 0:
				output_query.write(str(cur_doc_cnt) + '\n')
				output_query2.write(str(cur_doc_cnt) + '\n')
				cur_cnt += 1
			cur_doc_cnt = 0
			last_qid = qid
		cur_doc_cnt += 1
		output_feature.write(label+' ')
		output_feature.write(' '.join(tokens[2:]) + '\n')
	output_query.write(str(cur_doc_cnt) + '\n')
	output_query2.write(str(cur_doc_cnt) + '\n')
	
	input.close()
	output_query.close()
	output_feature.close()
	output_query2.close()

convert("set1.train.txt","yahoo.train","yahoo.train.query","yahoo.train.group")
convert("set1.test.txt","yahoo.test","yahoo.test.query","yahoo.test.group")
