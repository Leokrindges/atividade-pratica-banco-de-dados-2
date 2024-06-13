import cors from 'cors';
import 'dotenv/config';
import express, { response } from 'express';
import { prismaRepository } from './prisma.repository';

const app = express();
app.use(express.json);
app.use(cors());


app.listen(process.env.PORT, () => {
    console.log(`Server is running on port ${process.env.PORT}`);
    
})

